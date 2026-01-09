# Google Summer of Code 2026 Ideas

------------

# Administrative notes

Above are a list of ideas we've planned for GSoC 2026 projects.
If you have any ideas which can be useful to us, but are not in the
list, we'd love to hear from you.  You need not be a potential
student or a mentor to suggest ideas.

   * [Criteria for Ideas](#criteria-for-ideas)
   * [Coding Mentors](#coding-mentors)
   * [Assisting Mentors](#assisting-mentors)
   * [Everyone Else](#everyone-else)
   * [Suggested Issues](#suggested-issues)

## Criteria for Ideas

1. Does it fill an empty pedagogy niche in the activity set for Sugar
   or Sugarizer,
2. Does it increase quality of our software products (Sugar, activities,
   Music Blocks, or Sugarizer),
3. Does it _not_ involve any project infrastructure, e.g. not another
   app store, web site, or developer landing page,
4. Do we have a developer _now_ who would be willing and able to do it
   if a student was not available, and who can _promise_ to do it if a
   student is not selected; these are shown as a _coding mentor_,

## Coding Mentors

For each idea, we must have offers from one or more _coding mentors_
willing and able to assist students with coding questions.

Requirements for a _coding mentor_ are a demonstrated coding ability
in the form of contributions of code to Sugar Labs.

Mentors for a project will be assigned after proposals are received.

## Assisting Mentors For each idea, we may have offers from

mentors _who do not code_ willing to assist students in various
other ways, such as gathering requirements, visual design,
testing, and deployment; these are shown as an _assisting
mentor_.

The only requirement for an _assisting mentor_ is _knowledge of
the project_.

Mentors for a project will be assigned after proposals are received.

## Everyone Else

Everyone else in Sugar Labs may also be involved with these
projects, through mailing lists, Wiki, and GitHub.

The difference between a _mentor_ and _everyone else_, is that a
_mentor_ is obliged to respond when a student has a question, even if
the answer is "I don't know."  When a _mentor_ receives a question for
which the best forum is _everyone else_, then they are to respectively
redirect the student to ask _everyone else_.  See ["Be
flexible"](https://github.com/sugarlabs/sugar-docs/blob/master/src/CODE_OF_CONDUCT.md#be-flexible)
and ["When you are unsure, ask for
help"](https://github.com/sugarlabs/sugar-docs/blob/master/src/CODE_OF_CONDUCT.md#when-you-are-unsure-ask-for-help)
in our Code of Conduct.

## Suggested Issues

For some ideas, there is a list of 'Suggested issues to work on'.
These may help you to get familiar with the project.  The more
you work on these issues, the more experienced you will be for
the project.  However, this is not a strict list.  You _should_
try and explore other issues as well.
------------

# Music Blocks

## Integrated AI Debugging Assistant (Sustainable API Architecture)

### Description
Music Blocks currently includes an experimental AI debugging module (`aidebugger.js`), but it relies on deprecated local-model assumptions and lacks proper UI integration. This project proposes a **lightweight, API-based AI Debugging Assistant** that helps learners understand *why* their Music Blocks programs fail (logical debugging), rather than simply generating code.

Critically, this project addresses the community's recent decision to shift away from self-hosted GPU infrastructure by implementing a sustainable **"Bring Your Own Key" (BYOK)** architecture.

### Value to Sugar Labs
1. **Sustainability:**
   * **Students:** Access a rate-limited default endpoint (Zero Configuration) using Sugar Labs' free-tier quotas.
   * **Contributors/Schools:** Can input custom API keys via a "Developer Mode", shifting API costs away from the organization.
2. **Pedagogy:** The AI is tuned for **Explanation** over **Generation**. It focuses on diagnosing logic errors (e.g., infinite loops, silent audio, timing issues) to support constructionist learning.
3. **Maintainability:** Establishes a provider-agnostic interface (starting with Google Gemini Flash) that decouples the UI from the AI backend, making future updates easier.

### Expected Results
* **Refactor `aidebugger.js`:** Clean removal of deprecated local-model code paths.
* **API Integration:** Minimal client-side integration with the Google Gemini API and centralized error handling.
* **UI Integration:** A non-intrusive "AI Assistant" side panel within the Music Blocks workspace.
* **Settings Panel:** A local-storage based settings panel for managing custom API keys (BYOK).
* **Documentation:** Guides for Teachers (classroom setup) and Developers (extending the provider).

**Evaluation Metric:**
The AI assistant should provide clear, actionable explanations for a defined set of common beginner error patterns observed in Music Blocks programs.

### Project Size
* Large (350 hours)

### Knowledge Prerequisite
* JavaScript / TypeScript
* REST API Integration
* Music Blocks Architecture

### Suggested Issues to Work On
* Refactor `aidebugger.js` to remove unused local-model dependencies.
* Create a `plugin.json` manifest to register the AI debugger in the plugin loader.
* Implement a structured debug state logger.

### Coding Mentors
* TBD (Pending assignment)

### Assisting Mentors
* TBD