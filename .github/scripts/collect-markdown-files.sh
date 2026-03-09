#!/usr/bin/env bash
set -euo pipefail

if [[ -z "${GITHUB_OUTPUT:-}" ]]; then
    echo "GITHUB_OUTPUT is not set" >&2
    exit 1
fi

declare -a markdown_files=()

if [[ "${GITHUB_EVENT_NAME:-}" == "pull_request" ]]; then
    base_ref="${GITHUB_BASE_REF:-}"
    if [[ -z "${base_ref}" ]]; then
        echo "GITHUB_BASE_REF is not set for pull_request event" >&2
        exit 1
    fi

    git fetch --no-tags --depth=1 origin "${base_ref}"

    while IFS= read -r file; do
        [[ -n "${file}" ]] && markdown_files+=("${file}")
    done < <(git diff --name-only --diff-filter=ACMRT \
        "origin/${base_ref}...${GITHUB_SHA}" -- '*.md')
else
    while IFS= read -r file; do
        [[ -n "${file}" ]] && markdown_files+=("${file}")
    done < <(git ls-files '*.md')
fi

if [[ "${#markdown_files[@]}" -eq 0 ]]; then
    echo "has_files=false" >> "${GITHUB_OUTPUT}"
    echo "No markdown files found for validation."
    exit 0
fi

echo "has_files=true" >> "${GITHUB_OUTPUT}"

{
    echo "files<<EOF"
    printf "%s\n" "${markdown_files[@]}"
    echo "EOF"
} >> "${GITHUB_OUTPUT}"

echo "Markdown files selected for validation:"
printf '%s\n' "${markdown_files[@]}"
