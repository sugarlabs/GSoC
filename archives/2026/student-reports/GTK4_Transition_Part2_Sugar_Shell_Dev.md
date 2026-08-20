# GTK4 Transition Part 2: Sugar Shell

### Google Summer of Code 2026

*Name - Dev*

*GitHub username - [Dev10-sys](https://github.com/Dev10-sys)*

*Mentors - [Krish Pandya](https://github.com/MostlyKIGuess), [Ibiam Chihurumnaya](https://github.com/chimosky)*

*Assisting Mentors - [Walter Bender](https://github.com/walterbender), [Juan Pablo Ugarte](https://github.com/xjuan)*

*Project - [GSoC 2026: GTK4 Transition Part 2: Sugar Shell](https://github.com/sugarlabs/GSoC/blob/master/Ideas-2026.md#gtk4-transition-part-2-sugar-shell)*

---

## The Experience

This summer I worked on migrating the Sugar Shell desktop environment from GTK3 to GTK4. The Sugar Shell is the top-level desktop that learners interact with every day. It includes the Frame (the iconic Sugar border with device trays), the Home screen, the Journal, the Control Panel, clipboard and palette systems, and the Wayland compositor integration through Casilda.

GTK3 is approaching end-of-life, and Sugar needed to move to GTK4 to stay compatible with modern Linux distributions and to run natively on Wayland. Last year Krish migrated the Sugar toolkit (`sugar-toolkit-gtk4`). My project was Part 2: migrating the shell itself, and also moving the shell off X11 entirely onto Wayland as the display backend.

Going into the summer, I expected this to be a straightforward porting exercise. It turned out to be much deeper. GTK4 removes or renames a large number of APIs that Sugar was depending on. Container removal, signal handling, CSS parsing, input event types, surface coordinates, grab behavior on Wayland -- all of these changed in ways that required careful debugging rather than mechanical substitution. There were also C-level bugs in `sugar-ext` that would have caused silent memory corruption and runtime crashes on 64-bit systems under GTK4.

What a crazy summer. I am really happy with what got done.

---

## Weekly Blogs

| Week | Period | Link |
|------|--------|------|
| Community Bonding | May 2026 | [Blog](https://www.sugarlabs.org/news/all/2026-05-24-gsoc-26-dev-community-bonding) |
| Week 01 | May 25 - May 31 | [Blog](https://www.sugarlabs.org/news/all/2026-06-02-gsoc-26-dev-week01) |
| Week 02 | May 31 - Jun 06 | [Blog](https://www.sugarlabs.org/news/all/2026-06-06-gsoc-26-dev-week02) |
| Week 03 | Jun 07 - Jun 13 | [Blog](https://www.sugarlabs.org/news/all/2026-06-13-gsoc-26-dev-week03) |
| Week 04 | Jun 14 - Jun 20 | [Blog](https://www.sugarlabs.org/news/all/2026-06-20-gsoc-26-dev-week04) |
| Week 05 | Jun 21 - Jun 27 | [Blog](https://www.sugarlabs.org/news/all/2026-06-27-gsoc-26-dev-week05) |
| Week 06 | Jun 28 - Jul 04 | [Blog](https://www.sugarlabs.org/news/all/2026-07-05-gsoc-26-dev-week06) |
| Week 07 | Jul 05 - Jul 11 | [Blog](https://www.sugarlabs.org/news/all/2026-07-12-gsoc-26-dev-week07) |
| Week 08 | Jul 12 - Jul 18 | [Blog](https://www.sugarlabs.org/news/all/2026-07-19-gsoc-26-dev-week08) |
| Week 09 | Jul 19 - Jul 25 | [Blog](https://www.sugarlabs.org/news/all/2026-07-26-gsoc-26-dev-week09) |
| Week 10 | Jul 26 - Aug 01 | [Blog](https://www.sugarlabs.org/news/all/2026-08-02-gsoc-26-dev-week10) |
| Week 11 | Aug 02 - Aug 08 | [Blog](https://www.sugarlabs.org/news/all/2026-08-09-gsoc-26-dev-week11) |
| Week 12 | Aug 09 - Aug 17 | [Blog](https://www.sugarlabs.org/news/all/2026-08-16-gsoc-26-dev-week12) |

---

## Pull Requests

### [sugar](https://github.com/sugarlabs/sugar) - [PR #1106](https://github.com/sugarlabs/sugar/pull/1106)

The main shell migration PR. This is where the bulk of the porting work lives.

| What | Details |
|------|---------|
| Build system | Ported `setup.py` and Autotools configuration to work with GTK4 dependencies |
| Core base classes | Migrated `SugarApp`, `SugarWindow`, session management |
| Home Screen | Migrated `homebox.py`, `homewindow.py`, `homeactivity.py`, `grid.py` |
| Desktop Views | Migrated activities list, favorites view, neighborhood view |
| Frame | Migrated frame trays, clipboard, device icons, notification system |
| Journal | Migrated all Journal views, toolbars, search entries, action palettes, list/detail views |
| Control Panel | Migrated all settings modules: network, language, keyboard, backup, about, date/time |
| CSS Styling | Wrote a full GTK4 CSS stylesheet; removed all GTK3-specific CSS; switched from `load_from_string()` to `set_css_classes()` for widget styling |
| Wayland | Enforced `GDK_BACKEND=wayland` at shell startup; fixed Casilda compositor socket initialization; removed legacy subprocess launcher from `main.py` |
| Activity launch | Fixed focus ordering to wait for `map` signal before calling `present()` on Casilda-backed windows |
| Frame animation | Fixed single-frame jitter on `ZOOM_HOME` to `ZOOM_ACTIVITY` transition using `GLib.idle_add` |
| GTK4 API fixes | Replaced `container.remove(child)` with `child.unparent()` across all modules; replaced all removed GTK3 signals; fixed `Gdk.Screen` and monitor geometry to use `Gdk.Display` |
| Device icons | Migrated `PaletteMenuItem` icons and battery D-Bus property checks |
| Focus tracking | Fixed `shellwindow.py` focus handler to propagate activity window focus to the Frame |

Selected commits: [78b7276c](https://github.com/sugarlabs/sugar/pull/1106/commits/78b7276c55f0e68f1846a327f33311e53987f429), [485a4730](https://github.com/sugarlabs/sugar/pull/1106/commits/485a4730dc577b57f456a01d58eab277f3b33e0b), [ffce4130](https://github.com/sugarlabs/sugar/pull/1106/commits/ffce4130), [b7df9ccd](https://github.com/sugarlabs/sugar/pull/1106/commits/b7df9ccd), [0aa7dee7](https://github.com/sugarlabs/sugar/pull/1106/commits/0aa7dee7), [88d70d96](https://github.com/sugarlabs/sugar/pull/1106/commits/88d70d96), [e8a61c99](https://github.com/sugarlabs/sugar/pull/1106/commits/e8a61c99), [9b7eeb31](https://github.com/sugarlabs/sugar/pull/1106/commits/9b7eeb31), [f84a2d51](https://github.com/sugarlabs/sugar/pull/1106/commits/f84a2d51)

---

### [sugar-toolkit-gtk4](https://github.com/sugarlabs/sugar-toolkit-gtk4) - [PR #33](https://github.com/sugarlabs/sugar-toolkit-gtk4/pull/33)

Fixes required for the shell's usage of the already-ported toolkit.

| What | Details |
|------|---------|
| Palette popovers | Fixed popover parent binding assertions; added recursive parent traversal on item activation |
| Autohide | Fixed autohide grab inhibition on Wayland by setting `autohide(False)` and implementing non-blocking pointer tracking |
| Palette arrow | Fixed arrow node getting wrong position class from invoker geometry; correctly sets `.left`, `.right`, `.top`, `.bottom` |
| Escape key | Fixed `Gtk.EventControllerKey` handler calling `popdown()` on wrong widget instance |
| Tooltips | Fixed `set_has_tooltip(True)` set on button child instead of outer `ToolButton` container |
| Cairo drawing | Replaced removed `Gdk.cairo_set_source_pixbuf` with snapshot-based drawing in `icon.py` |
| Animator | Replaced non-existent `Gsk.Transform` Python bindings with margin and opacity property animations |
| CSS scoping | Fixed `apply_css_to_widget` injecting nested rule blocks rejected by GTK4 CSS parser |
| `activityfactory.py` | Moved back into toolkit from shell repository |
| GTK3 signals | Replaced all removed GTK3 signals throughout the toolkit |

Selected commits: [588ab0a7](https://github.com/sugarlabs/sugar-toolkit-gtk4/pull/33/commits/588ab0a7), [967a5b03](https://github.com/sugarlabs/sugar-toolkit-gtk4/pull/33/commits/967a5b03), [3c91b0da](https://github.com/sugarlabs/sugar-toolkit-gtk4/pull/33/commits/3c91b0da), [05f06778](https://github.com/sugarlabs/sugar-toolkit-gtk4/pull/33/commits/05f06778), [9ff02a80](https://github.com/sugarlabs/sugar-toolkit-gtk4/pull/33/commits/9ff02a80), [077a58db](https://github.com/sugarlabs/sugar-toolkit-gtk4/pull/33/commits/077a58db), [f8cd29c9](https://github.com/sugarlabs/sugar-toolkit-gtk4/pull/33/commits/f8cd29c9)

---

### [sugar-ext](https://github.com/sugarlabs/sugar-ext) - [PR #6](https://github.com/sugarlabs/sugar-ext/pull/6)

The C extension library used for input controllers and clipboard operations. Had not been ported to GTK4 before this project.

| What | Details |
|------|---------|
| Clipboard | Updated `sugar_clipboard_set_with_data` to use `GBytes` instead of raw pointer/length, preventing payload truncation on 64-bit systems |
| Surface coordinates | Ported touch and motion position getters to GDK4 `gdouble` floating-point surface coordinates |
| Destruction ordering | Fixed `sugar_event_controller_detach` to disconnect signal handlers before freeing controller instances, resolving use-after-free crashes during touch events |
| Slice allocator | Replaced deprecated `g_slice_new`/`g_slice_free` with standard `g_new0`/`g_free` throughout |
| Meson build | Updated `pkg.generate()` to pass the target library object directly |
| `GDK_GRAB_BROKEN` | Replaced with `GDK_TOUCH_CANCEL`; the GTK3 event type does not exist in GTK4 |
| Swipe controller | Fixed coordinate source from removed `gdk_event_get_axis()` to `gdk_event_get_position()`; added pointer event cases so mouse swipes are not silently dropped |
| Compiler warnings | Fixed discarded `const` qualifier warnings in `sugar-fatattr.c`; chained parent `GObjectClass.finalize` in `sugar-grid.c` |

Selected commits: [eb11cc8c](https://github.com/sugarlabs/sugar-ext/pull/6/commits/eb11cc8c)

---

### [sugar-artwork](https://github.com/sugarlabs/sugar-artwork) - [gtk4 branch](https://github.com/sugarlabs/sugar-artwork/tree/gtk4)

GTK4 CSS fixes for the theme file, merged into the `gtk4` branch on the upstream repo.

| What | Details |
|------|---------|
| Dropdown and combobox | Added missing GTK4 CSS rules for `GtkDropDown` and `GtkComboBox` buttons -- grey background, white text, matching GTK3 style | [PR #131](https://github.com/sugarlabs/sugar-artwork/pull/131) |
| Treeview and selection | Extended row selection, checkbox, and radio selectors to cover GTK4 cell nodes | [PR #131](https://github.com/sugarlabs/sugar-artwork/pull/131) |
| Control panel labels | Fixed section view label colors: white by default, black on active state | [PR #131](https://github.com/sugarlabs/sugar-artwork/pull/131) |
| Treeview row separators | Fixed row separator visibility in control panel views | [PR #132](https://github.com/sugarlabs/sugar-artwork/pull/132) |
| Checkbox fill and check states | Fixed checkbox fill color and added missing selected check states | [PR #132](https://github.com/sugarlabs/sugar-artwork/pull/132) |
| `alpha()` function | Replaced `alpha(@color, factor)` calls with `rgba()` equivalents; GTK4 marks `alpha()` deprecated | [PR #132](https://github.com/sugarlabs/sugar-artwork/pull/132) |
| Arrow node sizing | Replaced `-gtk-icon-size: 16px` with `min-width: 16px; min-height: 16px` on the combobox arrow node | [PR #132](https://github.com/sugarlabs/sugar-artwork/pull/132) |

---


## What I Learned

Working on this project taught me a lot about how GTK4 actually works under the hood, not just at the API surface level. The biggest shift was understanding that GTK4 assumes Wayland throughout. Things like grab ownership, surface coordinates, and input event sequences all changed because X11 assumptions were removed. Once I understood that, a lot of the migration decisions made more sense.

The C work in `sugar-ext` was a different kind of challenge. Debugging use-after-free crashes from destruction ordering is not something you can fix by reading documentation -- you have to trace the object lifecycle carefully. Getting comfortable with GObject Introspection constraints helped a lot.

Running `GTK_DEBUG=css` to surface parser warnings, and adding targeted print statements around frame timing issues, were two debugging habits that saved a lot of time this summer.

---

## What Comes Next

I am going to keep contributing to Sugar. Working here this summer has been genuinely one of the best experiences I have had. The mentors -- Krish, Ibiam, Walter, Juan Pablo -- were always available, gave real technical feedback, and actually cared about getting this right. The org admins were great too. It feels like a community that is worth sticking around in.

On the technical side, the Wayland migration is now in place. Casilda -- the embedded Wayland compositor -- is integrated into the shell via a socket handoff, and GTK4 activities connect to it directly. That was one of the more interesting things to figure out this summer and it works really well.

For anyone thinking about picking up Sugar Shell work: just do it. The codebase looks big but `jarabe/` is where everything lives and it is readable. `GTK_DEBUG=css` and `GTK_DEBUG=interactive` will save you a lot of time early on. The mentors are helpful and the work is real -- Sugar runs on actual hardware for actual kids, so what you ship matters.

There are still dozens of Sugar activities that need to be ported from `sugar3` to `sugar-toolkit-gtk4`. Each activity is a self-contained project. Good place to start if you want to contribute without having to understand the full shell first.

This project is far from done. It is just getting to the interesting part.

---

## Thanks

Thanks to Krish Pandya, Ibiam Chihurumnaya, Walter Bender, and Juan Pablo Ugarte for their guidance, reviews, and patience throughout the project. The Sugar Labs community was welcoming and helpful throughout the summer.
