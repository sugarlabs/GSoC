
# Google Summer of Code 2026 – Final Report

**Organization:** [Sugar Labs](https://sugarlabs.org)  
**Project:** [GTK4 Transition Part 1 Fructose](https://github.com/sugarlabs/GSoC/blob/master/Ideas-2026.md)  
**Mentors:** [Krish (MostlyK)](https://github.com/MostlyKIGuess), [Ibiam](https://github.com/chimosky), [Walter Bender](https://github.com/walterbender), [Juan Pablo Ugarte](https://github.com/xjuan)  
**Author:** [Divyam Agarwal](https://github.com/Inuth0603)  

---

## Weekly Progress Reports
* [Week 1: GTK4 Fructose Transition Begins](https://inuth0603.github.io/www-v2/news/developer-news/2026-06-01-gsoc-26-divyam-week1)
* [Week 2: Calculate Activity Layouts & UI Migrations](https://inuth0603.github.io/www-v2/news/developer-news/2026-06-07-gsoc-26-divyam-week2)
* [Week 3: Event Controllers & Memory Fixes in Calculate](https://inuth0603.github.io/www-v2/news/developer-news/2026-06-14-gsoc-26-divyam-week3)
* [Week 4: Porting the Log Activity](https://inuth0603.github.io/www-v2/news/developer-news/2026-06-21-gsoc-26-divyam-week4)
* [Week 5: Scoped CSS & Process Execution Pipelines](https://inuth0603.github.io/www-v2/news/developer-news/2026-06-28-gsoc-26-divyam-week5)
* [Week 6: Image Viewer Activity & Native Gestures](https://inuth0603.github.io/www-v2/news/developer-news/2026-07-05-gsoc-26-divyam-week6)
* [Week 7: Patching Upstream sugar-toolkit-gtk4](https://inuth0603.github.io/www-v2/news/developer-news/2026-07-12-gsoc-26-divyam-week7)
* [Week 8: Chat Activity Custom Widget Snapshotting](https://inuth0603.github.io/www-v2/news/developer-news/2026-07-19-gsoc-26-divyam-week8)
* [Week 9: Terminal Activity VTE Migration & Wayland](https://inuth0603.github.io/www-v2/news/developer-news/2026-07-26-gsoc-26-divyam-week9)
* [Week 10: Beginning the TurtleArt Port](https://inuth0603.github.io/www-v2/news/developer-news/2026-08-02-gsoc-26-divyam-week10)
* [Week 11: TurtleArt Palettes, Drawing, and Media](https://inuth0603.github.io/www-v2/news/developer-news/2026-08-09-gsoc-26-divyam-week11)
* [Week 12: Wrapping up TurtleArt & Auditing Legacy Bugs](https://inuth0603.github.io/www-v2/news/developer-news/2026-08-16-gsoc-26-divyam-week12)
* [GTK4 Porting Guide & GSoC Retrospective](https://inuth0603.github.io/www-v2/news/developer-news/2026-08-31-gtk4-porting-guide)

---

## Project Overview

My GSoC 2026 project was to handle **Part 1 of the GTK4 Transition for Sugar's core Fructose activity suite**. As the Sugar desktop moves toward a GTK4 architecture, the core learning activities needed to be migrated away from deprecated GTK3 APIs (like immediate-mode `draw` signals, `Gtk.VBox`/`HBox`, `Gtk.Table`, and `SugarGestures`). 

Over the past 12 weeks, I ported nine major Fructose activities to GTK4. While I initially thought this would mostly involve swapping out layout containers, it turned into a much deeper dive into refactoring custom rendering, fighting Wayland popup constraints, and eventually fixing 24 pre-existing Python 3 bugs and logic issues that I uncovered along the way. All of the porting work is now complete on my end, and the PRs are currently open and waiting for upstream review as the core GTK4 shell matures.

---

## What I Worked On (The Activities)

### 1. Calculate Activity (PR #81)
* **What happened:** This was my first port. Converting the legacy `Gtk.Table` to `Gtk.Grid` was straightforward, but the input handling completely broke because GTK4 drops `key-press-event`. 
* **The fix:** I brought in `Gtk.EventControllerKey`. The tricky part was that the input widgets were swallowing global shortcuts (like Enter and arrows), so I had to explicitly set the controller to the `CAPTURE` phase to intercept them first.
* **Bonus:** While testing, I noticed the activity was eating RAM. I tracked it down to a longstanding Matplotlib memory leak and fixed it by explicitly managing figure lifecycles with `pylab.close(fig)`. I also fixed a Python 3.12+ crash by replacing deprecated `ast.Num`/`ast.Str` nodes with `ast.Constant` in the math parser.

### 2. Log Activity (PR #25)
* **What happened:** The UI refactoring was simple (moving to `Gtk.Box`), but I realized the backend was still using legacy `os.popen` calls to fetch system logs, which is unsafe and deprecated.
* **The fix:** I rewrote the execution pipelines to use `subprocess.run`, which made the log fetching much safer and more reliable.

### 3. Image Viewer Activity (PR #34)
* **What happened:** Image Viewer relied heavily on `EventBox` and the old `SugarGestures` library for panning and zooming, neither of which exist in GTK4.
* **The fix:** I completely ripped out the old gesture wrappers and replaced them with native `Gtk.GestureZoom` and `Gtk.GestureDrag`. I also had to convert the immediate `draw` callbacks to `set_draw_func()` with updated Cairo surface contexts. 
* **Upstream bug:** During this port, I hit a crash in `sugar4.graphics.icon.Icon` that was actually an upstream toolkit issue, so I patched the `AttributeError` there ([PR #31](https://github.com/sugarlabs/sugar-toolkit-gtk4/pull/31)).

### 4. Chat Activity (PR #50)
* **What happened:** Chat had a custom `RoundBox` widget for speech bubbles that heavily relied on the GTK3 `draw` signal. When I tried to port it, the bubbles just vanished.
* **The fix:** I moved the rendering into `do_snapshot()`. To avoid rewriting all the math, I used `snapshot.append_cairo()` with a `Graphene.Rect` bounds to get a Cairo context, which let me keep most of the existing drawing code intact. I also replaced the custom grid packing in the emoji picker with a native `Gtk.Grid`.

### 5. Terminal Activity (PR #60)
* **What happened:** Porting the VTE terminal emulator to GTK4 bindings was the easy part. The real headache was Wayland. The custom popup menus kept rendering in weird places or failing to grab focus.
* **The fix:** Wayland has very strict window hierarchy rules. I had to explicitly set `.set_transient_for(parent)` and `.set_modal(True)` on the popups to get them to behave as proper child windows.

### 6. Browse Activity (PR #141)
* **What happened:** Browse is massive. The GTK3 toolbars were a mess of custom containers that didn't play nicely with GTK4's layout system. 
* **The fix:** I ended up tearing down the old legacy GTK3 containers and rebuilding the Browse toolbars from scratch using `Gtk.Popover`. Getting the layout to behave consistently across the WebView and browser controls took a lot of CSS scoping.

### 7. Read Activity (PR #50)
* **What happened:** Read handles both PDFs and EPUBs, but its backends were severely outdated.
* **The fix:** I didn't just port the UI; I upgraded both rendering engines. I transitioned the PDF backend from `Evince` to the much more modern `Papers 4.0` library (`PapersView.DocumentModel`). Concurrently, I ported the EPUB backend from `WebKit2` to `WebKit6`.

### 8. Jukebox Activity (PR #35)
* **What happened:** Jukebox uses GStreamer, and getting it to render video correctly in a GTK4 Wayland environment was failing.
* **The fix:** I had to adapt the GStreamer playback integration to use `gtk4paintablesink`, which is the proper Wayland-native way to handle multimedia in GTK4.

### 9. TurtleArt Activity (PR #104 & PR #105)
* **What happened:** This was by far the biggest challenge. The GTK4 migration (`#104`) touched everything: the canvas drawing engine, sprite handling, palettes, and media playback. 
* **The fix:** I replaced `Gtk.Menu` with `Gio.Menu` models and `Gio.SimpleAction`, and rebuilt the sample project picker with `Gtk.FlowBox`. But while testing, the activity kept crashing for unrelated reasons.
* **The Bug Audit (`#105`):** I paused the port to investigate the `master` branch and uncovered 24 pre-existing bugs (like Python 3 MRO / C3 Linearization conflicts in `util/odf/element.py` and window resource leaks). I split the fixes into 6 clean, bisectable commits. I worked closely with Walter Bender and Ibiam (@chimosky) to test these live in a VirtualBox Sugar VM before merging.

---

## Technical Challenges & Lessons Learned

### 1. The Reality of Retained-Mode Rendering
Reading that "GTK4 uses retained-mode `Gtk.Snapshot`" is one thing; actually porting a GTK3 custom widget is another. In activities like Chat, simply replacing the `draw` signal wasn't enough. I learned how to bridge the gap by overriding `do_snapshot()` and requesting a Cairo context with `snapshot.append_cairo()`. This let me salvage years of complex, custom drawing math while still hooking into GTK4's new rendering pipeline. In TurtleArt, it was even harder because `Gdk.cairo_set_source_pixbuf()` no longer exists, meaning I had to manually convert pixbufs to Cairo image surfaces before drawing sprites.

### 2. Event Controllers Change Everything
In GTK3, you could just listen to `key-press-event` on almost anything. GTK4 completely removes this in favor of `Gtk.EventController`. Figuring out the new event propagation model took time. In Calculate, for example, I learned that if an entry field has focus, it will swallow keystrokes before the window hears them. I had to attach a `Gtk.EventControllerKey` to the window and explicitly set it to the `CAPTURE` phase so I could handle shortcut keys *before* the child widgets intercepted them.

### 3. Fighting Wayland Window Constraints
When I tested the Terminal and TurtleArt ports under Wayland, dialogs and popups would randomly fail to appear or show up behind the main window. It turns out Wayland is incredibly strict about window hierarchy compared to X11. You can no longer just spawn a free-floating window. I had to track down every custom alert (`configwizard.py`, `helpbutton.py`) and explicitly bind them to their parent windows using `.set_transient_for(parent)` and `.set_modal(True)`.

---

## Summary of Pull Requests

*Note: All porting work is functionally complete from my end. The PRs remain "Open" because they are targeting the experimental `gtk4` branches and waiting for the core Sugar shell transition to catch up before they can be merged.*

| Activity | Pull Request | Target Branch | Status |
| :--- | :--- | :--- | :--- |
| **Calculate** | [PR #81](https://github.com/sugarlabs/calculate-activity/pull/81) | `gtk4` | Port Complete (Pending Upstream Merge) |
| **Log** | [PR #25](https://github.com/sugarlabs/log-activity/pull/25) | `gtk4` | Port Complete (Pending Upstream Merge) |
| **Image Viewer** | [PR #34](https://github.com/sugarlabs/imageviewer-activity/pull/34) | `gtk4` | Port Complete (Pending Upstream Merge) |
| **Chat** | [PR #50](https://github.com/sugarlabs/chat/pull/50) | `gtk4` | Port Complete (Pending Upstream Merge) |
| **Browse** | [PR #141](https://github.com/sugarlabs/browse-activity/pull/141) | `gtk4` | Port Complete (Pending Upstream Merge) |
| **Read** | [PR #50](https://github.com/sugarlabs/read-activity/pull/50) | `gtk4` | Port Complete (Pending Upstream Merge) |
| **Jukebox** | [PR #35](https://github.com/sugarlabs/jukebox-activity/pull/35) | `gtk4` | Port Complete (Pending Upstream Merge) |
| **sugar-toolkit-gtk4** | [PR #31](https://github.com/sugarlabs/sugar-toolkit-gtk4/pull/31) | `master` | Merged |
| **sugar-toolkit-gtk4** | [PR #35](https://github.com/sugarlabs/sugar-toolkit-gtk4/pull/35) | `master` | Merged |
| **Terminal** | [PR #60](https://github.com/sugarlabs/terminal-activity/pull/60) | `gtk4` | Port Complete (Pending Upstream Merge) |
| **TurtleArt (GTK4 Port)** | [PR #104](https://github.com/sugarlabs/turtleart-activity/pull/104) | `gtk4` | Port Complete (Pending Upstream Merge) |
# Google Summer of Code 2026 – Final Report

**Organization:** [Sugar Labs](https://sugarlabs.org)  
**Project:** [GTK4 Transition Part 1 Fructose](https://github.com/sugarlabs/GSoC/blob/master/Ideas-2026.md)  
**Mentors:** [Krish (MostlyK)](https://github.com/MostlyKIGuess), [Ibiam](https://github.com/chimosky), [Walter Bender](https://github.com/walterbender), [Juan Pablo Ugarte](https://github.com/xjuan)  
**Author:** [Divyam Agarwal](https://github.com/Inuth0603)  

---

## Weekly Progress Reports
* [Week 1: GTK4 Fructose Transition Begins](https://inuth0603.github.io/www-v2/news/developer-news/2026-06-01-gsoc-26-divyam-week1)
* [Week 2: Calculate Activity Layouts & UI Migrations](https://inuth0603.github.io/www-v2/news/developer-news/2026-06-07-gsoc-26-divyam-week2)
* [Week 3: Event Controllers & Memory Fixes in Calculate](https://inuth0603.github.io/www-v2/news/developer-news/2026-06-14-gsoc-26-divyam-week3)
* [Week 4: Porting the Log Activity](https://inuth0603.github.io/www-v2/news/developer-news/2026-06-21-gsoc-26-divyam-week4)
* [Week 5: Scoped CSS & Process Execution Pipelines](https://inuth0603.github.io/www-v2/news/developer-news/2026-06-28-gsoc-26-divyam-week5)
* [Week 6: Image Viewer Activity & Native Gestures](https://inuth0603.github.io/www-v2/news/developer-news/2026-07-05-gsoc-26-divyam-week6)
* [Week 7: Patching Upstream sugar-toolkit-gtk4](https://inuth0603.github.io/www-v2/news/developer-news/2026-07-12-gsoc-26-divyam-week7)
* [Week 8: Chat Activity Custom Widget Snapshotting](https://inuth0603.github.io/www-v2/news/developer-news/2026-07-19-gsoc-26-divyam-week8)
* [Week 9: Terminal Activity VTE Migration & Wayland](https://inuth0603.github.io/www-v2/news/developer-news/2026-07-26-gsoc-26-divyam-week9)
* [Week 10: Beginning the TurtleArt Port](https://inuth0603.github.io/www-v2/news/developer-news/2026-08-02-gsoc-26-divyam-week10)
* [Week 11: TurtleArt Palettes, Drawing, and Media](https://inuth0603.github.io/www-v2/news/developer-news/2026-08-09-gsoc-26-divyam-week11)
* [Week 12: Wrapping up TurtleArt & Auditing Legacy Bugs](https://inuth0603.github.io/www-v2/news/developer-news/2026-08-16-gsoc-26-divyam-week12)
* [GTK4 Porting Guide & GSoC Retrospective](https://inuth0603.github.io/www-v2/news/developer-news/2026-08-31-gtk4-porting-guide)

---

## Project Overview

My GSoC 2026 project was to handle **Part 1 of the GTK4 Transition for Sugar's core Fructose activity suite**. As the Sugar desktop moves toward a GTK4 architecture, the core learning activities needed to be migrated away from deprecated GTK3 APIs (like immediate-mode `draw` signals, `Gtk.VBox`/`HBox`, `Gtk.Table`, and `SugarGestures`). 

Over the past 12 weeks, I ported nine major Fructose activities to GTK4. While I initially thought this would mostly involve swapping out layout containers, it turned into a much deeper dive into refactoring custom rendering, fighting Wayland popup constraints, and eventually fixing dozens of legacy Python 3 memory leaks and logic bugs that I uncovered along the way. All of the porting work is now complete on my end, and the PRs are currently open and waiting for upstream review as the core GTK4 shell matures.

---

## What I Worked On (The Activities)

### 1. Calculate Activity (PR #81)
This was my first port, and converting the legacy `Gtk.Table` to `Gtk.Grid` was pretty straightforward. The real issue was that input handling completely broke because GTK4 drops `key-press-event`. I first tried adding a `Gtk.EventControllerKey`, but the input widgets were swallowing global shortcuts (like Enter and arrows) before the window could see them. I ended up having to attach the controller to the main window and explicitly set it to the `CAPTURE` phase to intercept them. While testing this, I also noticed the activity was eating RAM, which turned out to be a longstanding Matplotlib memory leak that I fixed by explicitly managing figure lifecycles with `pylab.close(fig)`. I also patched a Python 3.12+ crash by swapping out deprecated `ast.Num`/`ast.Str` nodes with `ast.Constant`.

### 2. Log Activity (PR #25)
The UI refactoring here was simple enough (mostly moving things to `Gtk.Box`), but while poking around the backend, I realized it was still using legacy `os.popen` calls to fetch system logs. That's both unsafe and deprecated, so I took the opportunity to rewrite the execution pipelines to use `subprocess.run`, which made the log fetching much safer and more reliable.

### 3. Image Viewer Activity (PR #34)
Image Viewer relied heavily on `EventBox` and the old `SugarGestures` library for panning and zooming, neither of which exist in GTK4. I had to completely rip out the old gesture wrappers and replace them with native `Gtk.GestureZoom` and `Gtk.GestureDrag`. Getting the rendering to work meant converting the immediate `draw` callbacks to `set_draw_func()` with updated Cairo surface contexts. During all this, I hit a weird crash in `sugar4.graphics.icon.Icon` that turned out to be an upstream toolkit issue, so I patched the `AttributeError` there as well ([PR #31](https://github.com/sugarlabs/sugar-toolkit-gtk4/pull/31)).

### 4. Chat Activity (PR #50)
Chat has this custom `RoundBox` widget for speech bubbles that heavily relied on the GTK3 `draw` signal. When I first tried to port it, the bubbles just vanished entirely. Instead of rewriting all the complex math, I moved the rendering into `do_snapshot()` and used `snapshot.append_cairo()` with a `Graphene.Rect` bounds. This gave me a Cairo context so I could actually keep most of the existing drawing code intact. I also cleaned up the emoji picker by replacing its custom grid packing with a native `Gtk.Grid`.

### 5. Terminal Activity (PR #60)
Porting the `VTE` terminal emulator to its GTK4 bindings was the main challenge here. The simple GTK3 `vte.Terminal().fork_command()` was completely ripped out in modern GTK4 bindings. I had to rewrite the entire shell spawning pipeline to use `fork_command_full()`, explicitly managing `Vte.PtyFlags`, GLib spawn flags (`DO_NOT_REAP_CHILD`), and manually passing the `$HOME` environment variables just to get `/bin/bash` to boot up properly. I also had to fix some weird accelerator bugs where the old GTK3 code was doing manual `Gtk.accelerator_parse` and injecting keyvals directly into the child widgets.

### 6. Browse Activity (PR #141)
Browse is massive. The GTK3 toolbars were a mess of custom containers that absolutely didn't play nicely with GTK4's layout system. I spent quite a bit of time tearing down the old legacy GTK3 containers and rebuilding the Browse toolbars from scratch using `Gtk.Popover`. Getting the layout to behave consistently across the WebView and browser controls took a lot of CSS scoping and trial and error.

### 7. Read Activity (PR #50)
Read handles both PDFs and EPUBs, but its backends were severely outdated. I decided not to just port the UI, but to upgrade both rendering engines. I transitioned the PDF backend from `Evince` to the much more modern `Papers 4.0` library (`PapersView.DocumentModel`). At the same time, I ported the EPUB backend from `WebKit2` to `WebKit6`.

### 8. Jukebox Activity (PR #35)
Jukebox uses GStreamer, and getting it to render video correctly in a GTK4 Wayland environment was failing at first. I had to figure out how to adapt the GStreamer playback integration to use `gtk4paintablesink`, which is the proper Wayland-native way to handle multimedia in GTK4.

### 9. TurtleArt Activity (PR #104 & PR #105)
This was by far the biggest challenge. The main GTK4 migration (`#104`) touched everything: the canvas drawing engine, sprite handling, palettes, and media playback. I replaced `Gtk.Menu` with `Gio.Menu` models and `Gio.SimpleAction`, and rebuilt the sample project picker with `Gtk.FlowBox`. But while testing all this, the activity kept crashing for completely unrelated reasons.

I ended up pausing the port to investigate the `master` branch and uncovered 24 pre-existing bugs, including Python 3 MRO / C3 Linearization conflicts in `util/odf/element.py` and some window resource leaks. I split these fixes into 6 clean, bisectable commits (`#105`) and worked closely with Walter Bender and Ibiam (@chimosky) to test them live in a VirtualBox Sugar VM before we merged anything.

---

## What I Learned Along the Way

### 1. Working around GTK4's new rendering pipeline
The GTK4 docs tell you it uses retained-mode `Gtk.Snapshot`, but actually porting a GTK3 custom widget is a different story. In Chat, for instance, just hooking up the new snapshot system wasn't enough because the old math was way too complex to rewrite from scratch. I ended up figuring out that I could override `do_snapshot()` and use `snapshot.append_cairo()` to grab a Cairo context. That trick saved me from having to rewrite years of custom drawing logic. TurtleArt was even messier because `Gdk.cairo_set_source_pixbuf()` is gone entirely, so I had to write a manual conversion to turn pixbufs into Cairo image surfaces every time I wanted to draw a sprite.

### 2. Event Controllers take some getting used to
In GTK3, you just listened for `key-press-event` and called it a day. GTK4 completely drops that for `Gtk.EventController`, and it took me a while to wrap my head around how events propagate now. In Calculate, I was completely stuck for a bit because whenever an entry field was focused, it would swallow all the keystrokes before the window even registered them. I eventually learned I had to attach a `Gtk.EventControllerKey` to the window and force it into the `CAPTURE` phase so it would hear the shortcut keys *before* the child widgets grabbed them.

### 3. Wayland is ridiculously strict about windows
When I tested the TurtleArt port under Wayland, random popups and dialogs were just refusing to show up, or they'd get buried behind the main window. It turns out Wayland doesn't let you spawn free-floating windows like X11 did. I had to hunt down every single custom alert popup (like `configwizard.py` and `helpbutton.py`) and explicitly tie them to their parent windows by calling `.set_transient_for(parent)` and `.set_modal(True)`.

---

## Summary of Pull Requests

*Note: All porting work is functionally complete from my end. The PRs remain "Open" because they are waiting for upstream review and for the core Sugar shell GTK4 transition to catch up before they can be merged.*

| Activity | Pull Request | Status |
| :--- | :--- | :--- |
| **Calculate** | [PR #81](https://github.com/sugarlabs/calculate-activity/pull/81) | Port Complete (Pending Upstream Merge) |
| **Log** | [PR #25](https://github.com/sugarlabs/log-activity/pull/25) | Port Complete (Pending Upstream Merge) |
| **Image Viewer** | [PR #34](https://github.com/sugarlabs/imageviewer-activity/pull/34) | Port Complete (Pending Upstream Merge) |
| **Chat** | [PR #50](https://github.com/sugarlabs/chat/pull/50) | Port Complete (Pending Upstream Merge) |
| **Browse** | [PR #141](https://github.com/sugarlabs/browse-activity/pull/141) | Port Complete (Pending Upstream Merge) |
| **Read** | [PR #50](https://github.com/sugarlabs/read-activity/pull/50) | Port Complete (Pending Upstream Merge) |
| **Jukebox** | [PR #35](https://github.com/sugarlabs/jukebox-activity/pull/35) | Port Complete (Pending Upstream Merge) |
| **sugar-toolkit-gtk4** | [PR #31](https://github.com/sugarlabs/sugar-toolkit-gtk4/pull/31) | Merged |
| **sugar-toolkit-gtk4** | [PR #35](https://github.com/sugarlabs/sugar-toolkit-gtk4/pull/35) | Pending Upstream Merge |
| **Terminal** | [PR #60](https://github.com/sugarlabs/terminal-activity/pull/60) | Port Complete (Pending Upstream Merge) |
| **TurtleArt (GTK4 Port)** | [PR #104](https://github.com/sugarlabs/turtleart-activity/pull/104) | Port Complete (Pending Upstream Merge) |
| **TurtleArt (Bug Fixes)** | [PR #105](https://github.com/sugarlabs/turtleart-activity/pull/105) | Port Complete (Pending Upstream Merge) |

---

## Acknowledgments

A huge thank you to my mentors **Krish (@MostlyKIGuess)**, **Ibiam (@chimosky)**, and **Walter Bender** for their direct guidance, patience, and code reviews throughout this summer. Special thanks to **Juan Pablo Ugarte (@xjuan)** for his overall mentorship, and **James Cameron (@quozl)** for his help navigating the Sugar build system and pointing out when I pushed too many commits at once!

This project taught me a lot beyond GTK4 itself. I got much more comfortable debugging old code, working through upstream issues, and figuring things out with the community. I look forward to continuing as an active maintainer and contributor at Sugar Labs as we push the GTK4 transition across the finish line!
