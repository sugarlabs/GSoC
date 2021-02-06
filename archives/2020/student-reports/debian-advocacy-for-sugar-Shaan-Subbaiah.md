<h1 align="center">Debian Advocacy for Sugar</h1>


<div align="center">
    Google Summer of Code 2020
    <span> | </span>
    Sugar Labs
</div>
<div align="center">
    <a href="https://github.com/shaansubbaiah">
        <strong>Shaan Subbaiah B C</strong>
    </a>
</div>


<div align="center">
    <h4>
        <a href="#overview">
            Overview
        </a>
        <span> | </span>
        <a href="#work-done">
            Work Done
        </a>
        <span> | </span>
        <a href="#work-in-progress">
            Work In Progress
        </a>
        <span> | </span>
        <a href="#outcome">
            Outcome
        </a>
    </h4>
</div>


## Overview

**✨First, I'd like to especially thank my mentor, [James Cameron](https://github.com/quozl), whose guidance was invaluable, helping me think for myself and tackle problems. James also educated me on engineering and open-source best practices.**

**I'd also like to thank all the members of the Sugar community that helped me along the way, making my GSoC experience that much more _sweet_.**

### Project Details
The project revolved primarily around the testing and debugging of the various releases of Debian (stable, testing, experimental) with Sugar and its dependencies.

Through the project I have tried to fix bugs in Sugar, its activities and dependencies that are reproducible in Debian and Debian issues related to Sugar.

The official project idea can be found in [sugarlabs/GSoC](https://github.com/sugarlabs/GSoC/blob/master/Ideas-2020.md#debian-advocacy-for-sugar)

### Testing outcome
I have thoroughly tested Sugar 0.117-3 with Debian 10.4 'stable' and Debian 11 'testing'.

Tested are the activity's start/shutdown and save/restore functionality, major functions, collaboration (if supported), interface issues, warnings in logs.

Testing outcomes for the same have been given below.

**Testing outcome - Sugar 0.117-3 on Debian 10.4 'Stable' (Buster)**

| Sugar   | Debian                              |
| :-----: | :---------------------------------: |
| 0.117-3 | Buster / 10.4,  (unstable packages) |


`Tick ✓` `Cross ✕`

| Activity     | Start/Stop                                      | Functions | Save/Restore | Collaboration | Interface             | Other              |
| :----------: | :---------------------------------------------: | :-------: | :----------: | :-----------: | :-------------------: | :----------------: |
| Browse       | ✕ <br> [Debian #963068](bugs.debian.org/963068) | ✓         | ✓            | ✕             | ✓                     | ✓                  |
| Calculate    | ✓                                               | ✓         | ✓            | ✓             | ✓                     | ✓                  |
| Chat         | ✓                                               | ✓         | ✓            | ✓             | ✓                     | ✓                  |
| Image Viewer | ✓                                               | ✓         | ✓            | ✓             | ✓                     | ✓                  |
| Jukebox      | ✓                                               | ✓         | ✓            | -             | ✕ **MULTIPLE ISSUES** | ✓                  |
| Log          | ✓                                               | ✓         | ✓            | -             | ✓                     | ✓                  |
| Pippy        | ✓                                               | ✓         | ✓            | -             | ✓                     | **1 ISSUE**        |
| Read         | ✓                                               | ✓         | ✓            | ✕             | ✓                     | ✓                  |
| Terminal     | ✓                                               | ✓         | ✓            | -             | ✓                     | **WARNING IN LOG** |
| Write        | ✓                                               | ✓         | ✓            | **1 ISSUE**   | ✓                     | **2 ISSUES**       |

<br>

<details> 
<summary>
    <strong>Click</strong> to view the <strong>Complete Testing Report</strong>
</summary>


```markdown
**Write**
Collaboration:
[#40, Reported by Saumya](https://github.com/sugarlabs/write-activity/issues/40)
Other:
1. TTS ends halfway through the last word. Unable to reproducible properly.
2. Default font differs for guest in collaboration [#43](https://github.com/sugarlabs/write-activity/issues/43)

**Pippy**
Dark mode is not applied to Pippy tabs created after Dark Mode is enabled.

**Terminal**
    ```
    /usr/lib/python3/dist-packages/sugar3/activity/activityinstance.py:60: Warning: value "((GtkInputPurpose) 10)
    " of type 'GtkInputPurpose' is invalid or out of range for property 'input-purpose' of type 'GtkInputPurpose'
    activity.show()
    1592556015.448473 DEBUG root: Activity.__canvas_map_cb
    /usr/share/sugar/activities/Terminal.activity/terminal.py:378: Warning: value "((GtkInputPurpose) 10)" of typ
    e 'GtkInputPurpose' is invalid or out of range for property 'input-purpose' of type 'GtkInputPurpose'
    index = self._notebook.append_page(box, tablabel)
    /usr/share/sugar/activities/Terminal.activity/terminal.py:453: Warning: value "((GtkInputPurpose) 10)" of typ
    e 'GtkInputPurpose' is invalid or out of range for property 'input-purpose' of type 'GtkInputPurpose'
    self._notebook.props.page = index
    ```

**Browse** 
All tests apart from the `start/stop` were done after installing `libglib2.0-dev` package which prevented the activity from opening.
1. Typing something in the search bar and clicking the search button or hitting Enter doesn't do anything; whereas searching through the address bar works.
2. Typing in the address bar causes several (possibly 100's) of warnings in the activity log
    ```
    (sugar-activity3:7184): Gtk-WARNING **: 16:25:08.511: Failed to set text from markup due to error parsing mar
    kup: Error on line 2: Entity did not end with a semicolon; most likely you used an ampersand character withou
    t intending to start an entity — escape ampersand as &amp;
    ```

**Jukebox**
1. Moving the openGL renderer window around creates a Windows XP-like solitare effect
2. Closing the openGL renderer window throws an error in the Jukebox log
    ```
    1592561580.133608 ERROR root: ERROR MESSAGE: gst-resource-error-quark: Quit requested (3)
    1592561580.133807 ERROR root: ERROR DETAIL: gstglimagesink.c(1781): gst_glimage_sink_show_frame (): /GstPipel
    ine:pipeline0/GstPlayBin:playbin0/GstPlaySink:playsink/GstBin:vbin/GstAutoVideoSink:videosink/GstGLImageSinkB
    in:videosink-actual-sink-glimage/GstGLImageSink:sink
    ```
3. Seeking ahead or back causes the openGL visualization to freeze, takes quite some time to recover or doesn't recover at all.
4. Clicking the full-screen button causes another openGL visualization of the same size to spawn on the left of the previous visualization, which is now frozen.
5. Sometimes while closing and playing songs in the playlist a huge amount of warning appear in the jukebox log, not sure how to reproduce properly.
    ```
    1592562307.413873 ERROR root: ERROR MESSAGE: gst-resource-error-quark: Quit requested (3)
    1592562307.414180 ERROR root: ERROR DETAIL: gstglimagesink.c(1781): gst_glimage_sink_show_frame (): /GstPipeline:pipeline0/GstPlayBin:playbin0/GstPlaySink:playsink/GstBin:vbin/GstAutoVideoSink:videosink/GstGLImageSinkBin:videosink-actual-sink-glimage/GstGLImageSink:sink

    (sugar-activity3:6947): GStreamer-CRITICAL **: 15:55:07.546: gst_object_unref: assertion '((GObject *) object)->ref_count > 0' failed

    (sugar-activity3:6947): GStreamer-CRITICAL **: 15:55:07.547: gst_object_unref: assertion '((GObject *) object)->ref_count > 0' failed

    .
    . This line repeats around 100+ times
    .

    (sugar-activity3:6947): GStreamer-CRITICAL **: 15:55:07.874: gst_object_unref: assertion '((GObject *) object)->ref_count > 0' failed
    sys:1: Warning: g_object_ref: assertion 'G_IS_OBJECT (object)' failed
    sys:1: Warning: instance with invalid (NULL) class pointer
    sys:1: Warning: g_signal_emit_valist: assertion 'G_TYPE_CHECK_INSTANCE (instance)' failed
    ```

**Also, in `~/.sugar/default/data` I noticed there were ~60 copies of the same song I had been playing. I had downloaded the song only once, perhaps it is something to do with how Jukebox handles the songs. This consumes a ton of space, in my case 7mb*60.**

**Read**
Sometimes the last 2 characters in a txt file aren't seen.
Reproduced by: Create a txt file in Write Activity -> Open with Read Activity -> Last 2 characters are missing.
This happens occasionally, the data in the txt file is intact.

**Calculate**
Typing random text instead of digits/variables throws an error. Should be handled.
    ```
    1592573782.228379 DEBUG Calculate: Result: RuntimeError("Variable 'oklol' not defined", 0,
    5)
    Traceback (most recent call last):
    File "/usr/share/sugar/activities/Calculate.activity/layout.py", line 133, in <lambda>
        lambda w: self._parent.process()],
    File "/usr/share/sugar/activities/Calculate.activity/calculate.py", line 552, in process
        self.set_error_equation(eqn)
    File "/usr/share/sugar/activities/Calculate.activity/calculate.py", line 444, in set_err
    or_equation
        self.set_last_equation(eqn)
    File "/usr/share/sugar/activities/Calculate.activity/calculate.py", line 439, in set_las
    t_equation
        self.layout.last_eq.set_buffer(eqn.create_lasteq_textbuf())
    File "/usr/share/sugar/activities/Calculate.activity/calculate.py", line 219, in create_
    lasteq_textbuf
        resstr = str(self.result)
    File "/usr/share/sugar/activities/Calculate.activity/astparser.py", line 110, in __str__
        {'a': self.eqn[self._range[0] - 1: self._range[1] - 1],
    TypeError: 'NoneType' object is not subscriptable
    ```

**Browse**
Traceback in Host's Browse log when Guest connects. The webpage opened in the host does not open in the Guest.
    ```
    1592574235.567373 DEBUG CollabWrapper: __state_changed_cb dbus.UInt32(3) dbus.UInt32(0)
    Traceback (most recent call last):
    File "/usr/share/sugar/activities/Browse.activity/collabwrapper.py", line 688, in __noti
    fy_state_cb
        input_stream = self._get_input_stream()
    File "/usr/share/sugar/activities/Browse.activity/collabwrapper.py", line 736, in _get_i
    nput_stream
        return Gio.MemoryInputStream.new_from_data(self._blob, None)
    TypeError: Item 0: Must be number, not str
    ```


Note, the tests:
- Don't include issues that were already tracked in Github.
- Cover almost all the functions of an activity.
- Save/Restore refers to closing and reopening the activity and checking if there are any changes for activities that do not have an explicit save functionality.
- Includes most, if not all errors that were logged while testing the activities. _Ideally_ nothing should be left out, but ...
- Will be covered in more detail if possible for Debian `unstable` and `testing`, this was to setup a baseline.
```

</details>

---

**Testing outcome - Sugar 0.117-3 on Debian 11 'Testing' (Bullseye)**

|  Sugar  |              Debian               |  As of  |
| :-----: | :-------------------------------: | :-----: |
| 0.117-3 | Bullseye / 11, (testing packages) | 16 July |

`Tick ✓` `Cross ✕`

| Activity     |                   Start/Stop                    |  Functions  | Save/Restore | Collaboration | Interface |    Other     |
| :----------- | :---------------------------------------------: | :---------: | :----------: | :-----------: | :-------: | :----------: |
| Browse       | ✕ <br> [Debian #963068](bugs.debian.org/963068) |      ✓      |      ✓       |       ✕       |     ✓     | **1 ISSUE**  |
| Calculate    |                        ✓                        |      ✓      |      ✓       |       ✓       |     ✓     | **1 ISSUE**  |
| Chat         |                        ✓                        |      ✓      |      ✓       |       ✓       |     ✓     |      ✓       |
| Image Viewer |                        ✓                        |      ✓      |      ✓       |       ✓       |     ✓     |      ✓       |
| Jukebox      |                        ✓                        |      ✓      |      ✓       |       -       |     ✓     |      ✓       |
| Log          |                        ✓                        |      ✓      |      ✓       |       -       |     ✓     |      ✓       |
| Pippy        |                        ✓                        |      ✓      |      ✓       |       -       |     ✓     |      ✓       |
| Read         |                        ✓                        | **1 ISSUE** |      ✓       |       ✕       |     ✓     |      ✓       |
| Terminal     |                        ✓                        |      ✓      |      ✓       |       -       |     ✓     |      ✓       |
| Write        |                        ✓                        |      ✓      |      ✓       |       ✕       |     ✓     | **2 ISSUES** |
| EToys        |                   **1 ISSUE**                   | **1 ISSUE** |      ✕       |       -       |     ✓     |      ✓       |
| Memorize     |                        ✓                        | **1 ISSUE** |      ✕       |       ✓       |     ✓     | **2 ISSUES** |

<br>

<details>
<summary>
    <strong>Click</strong> to view the <strong>Complete Testing Report</strong>
</summary>


```markdown
**Read**
Functions:

1. Sometimes the last 2 characters in a txt file aren't seen. [NEEDS CONFIRMATION]
   Reproduced by: Create a txt file in Write Activity -> Open with Read Activity -> Last 2 characters are missing.
   This happens occasionally, the data in the txt file is intact.


**Calculate**
Other:

1. Typing random text instead of digits/variables throws an error. [#67](https://github.com/sugarlabs/calculate-activity/issues/67)


**Write**
Other:

1. TTS ends halfway through the last word. [DEBIAN ONLY]
2. Abiword Issues, Different fonts in collaboration, crashes, etc [#43](https://github.com/sugarlabs/write-activity/issues/43)


**Browse:**
Other:

1. Collapsing the Bookmarks bar lags/ causes multiple refreshes? [NEEDS CONFIRMATION]


**Memorize**
Functions:

1. Editing the game doesn’t work, the activity gets stuck [#29](https://github.com/sugarlabs/memorize-activity/issues/29)

Save/Restore:

1. Activity saves its state to the Datastore but does not load it properly, a fresh instance is started. Therefore, the user is unable to save their progress and continue later.

Other:

1. On hovering over ‘grid size’ buttons, a warning is displayed:

    (sugar-activity3:1859): Gtk-WARNING **: 21:04:20.416: Drawing a gadget with negative dimensions.
    Did you forget to allocate a size? (node menuitem owner SugarPaletteHeader)
   

2. The activity’s sounds and images (which are optional) depend on art4apps (http://wiki.sugarlabs.org/go/Art4Apps), which is not installed by default. Hence none of the sounds and words to generate cards dynamically are included. The user is not notified of winning as there is neither text displayed saying he/she has won nor the winning sound (win.wav from art4apps) is played.


**Etoys:**
Start/Stop:

1. Error window upon launching:
   `Error: Cannot find gconf path /desktop/user/sugar`

Functions:

1. Clicking the Back/left-arrow button goes to the menu, which is frozen. The programmable car and the menu buttons don't work, there is no way to navigate back and the only way to exit is using Function buttons (F1 to F3)


A lot of the issues reported while testing on Debian Buster (with unstable packages) have been fixed already.

Though these tests were done to check for issues of Sugar packages on Debian, a lot of the issues found (almost all) are present in the upstream Sugar Labs Github repositories.

Issues with the label [NEEDS CONFIRMATION] are reproducible on Debian Bullseye, needs to be tested on other packages/distributions.

```

</details>

---

## Work Done
- [Issues Reported](#issues-reported)
- [Bugs opened in Abiword](#bugs-opened-in-abiword)
- [Bugs opened in Debian](#bugs-opened-in-debian)
- [Pull Requests](#pull-requests)
- [Other](#other)


### Issues reported


`05-Jun` - Sugar - DBus NoReply Error [Sugar-devel](http://lists.sugarlabs.org/archive/sugar-devel/2020-June/058403.html)

&emsp; &emsp; &emsp;└ Write - Activity crashing on resizing and moving tables.

&emsp; &emsp; &emsp;└ Browse - Activity doesn't open due to missing dependencies.


`06-Jun` - Sugar - Sugar 0.117-3 on Debian - AttributeError: 'str' object has no attribute 'decode' [#923](https://github.com/sugarlabs/sugar/issues/923)


`12-Jun` - Write - Default font is different for guest on joining collaboration session. [#43](https://github.com/sugarlabs/write-activity/issues/43)


`13-Jun` - Write - Error on closing Write Activity [#42](https://github.com/sugarlabs/write-activity/issues/42)


`16-Jun` - Write - Crashes while trying to resize table cells vertically [#41](https://github.com/sugarlabs/write-activity/issues/41)


`19-Jun` - [Sugar-devel](http://lists.sugarlabs.org/archive/sugar-devel/2020-June/058458.html)

&emsp; &emsp; &emsp;└ Browse - Collaboration doesn't work.

&emsp; &emsp; &emsp;└ Pippy - Dark mode is not applied to Pippy tabs created after Dark Mode is enabled.

&emsp; &emsp; &emsp;└ Read - Collaboration doesn't work; Sometimes last 2 characters in a txt file are missing.

&emsp; &emsp; &emsp;└ Terminal - Warning in Activity log. Traceback in Sugar.

&emsp; &emsp; &emsp;└ Write - Sometimes, TTS ends halfway through the last word.


`30-Jun` - Read - When highlighting text, a wrong logging level was used. [Sugar-devel](http://lists.sugarlabs.org/archive/sugar-devel/2020-June/058501.html)


`30-Jun` - Calculate - Warning when attempting to calculate an expression; Error when using 'pi' and 'e' in expression; Hovering over Algebraic, Trigonometric toolbar buttons throws errors; Submitting trigonometric functions without values displays an error in the Activity but only the first character is highlighted red instead of the full function; Submitting logical expressions without values throws errors; Submitting / pressing '=' without entering any value throws errors. [Sugar-devel](http://lists.sugarlabs.org/archive/sugar-devel/2020-June/058501.html)


`04-Jul` - [Sugar-devel](http://lists.sugarlabs.org/archive/sugar-devel/2020-July/058522.html)

&emsp; &emsp; &emsp;└ Browse - HTTPError not handled while trying to copy an image [#112](https://github.com/sugarlabs/browse-activity/issues/112)

&emsp; &emsp; &emsp;└ Chat - Prevent user from sending smileys when disconnected [#30](https://github.com/sugarlabs/chat/issues/30)

&emsp; &emsp; &emsp;└ Jukebox - Errors when navigating above and below the first and last songs respectively [#30](https://github.com/sugarlabs/jukebox-activity/issues/30)

&emsp; &emsp; &emsp;└ Write - Multiple issues due to AbiWord causing Segmentation Faults.


`10-Jul` - Memorize - Editing the game doesn’t work, the activity gets stuck [#29](https://github.com/sugarlabs/memorize-activity/issues/29)


`16-Jul` - [Sugar-devel](http://lists.sugarlabs.org/archive/sugar-devel/2020-July/058546.html)

&emsp; &emsp; &emsp;└ Calculate - Typing random text instead of digits/variables throws an error. [#67](https://github.com/sugarlabs/calculate-activity/issues/67)

&emsp; &emsp; &emsp;└ Browse - Collapsing the Bookmarks bar lags/ causes multiple refreshes. Later found to be due to the VM.

&emsp; &emsp; &emsp;└ Memorize - Activity saves its state to the Datastore but does not load it properly, a fresh instance is started. Therefore, the user is unable to save their progress and continue later; On hovering over ‘grid size’ buttons, a warning is displayed; The activity’s sounds and images (which are optional) depend on art4apps (http://wiki.sugarlabs.org/go/Art4Apps), which is not installed by default.

&emsp; &emsp; &emsp;└ EToys - Error window upon launching, menu frozen on Debian Bullseye.


`10-Aug` - Terminal - Report unused function [GitHub Comment](https://github.com/sugarlabs/terminal-activity/pull/47)


`15-Aug` - Sugar - 502 Bad Gateway when trying to view an activity's help page [#931](https://github.com/sugarlabs/sugar/issues/931)



### Bugs opened in AbiWord:

`11-Aug` - Write - Segmentation faults while performing various actions.
bugzilla.abisource.com/show_bug.cgi?id=13934

<details>
<summary><strong>Click to view</strong> the complete bug report</summary>
<p>

```markdown

Bug#: 13934	Product:  AbiWord	Version: 3.0.4	Platform: PC
OS/Version: Linux	Status: NEW	Severity: major	Priority: P3
Resolution: 	Assigned To: domlachowicz@gmail.com	Reported By: shaansubbaiah.cs18@bmsce.ac.in	QA Contact: abisource-qa-spam@abisource.com
Component: Front End - GTK	Target Milestone: ---
URL: 
Summary: Segmentation faults while performing various actions
Keywords:  
Status Whiteboard: 
Opened: 2020-08-11 12:09

    I have found some bugs that can be reproduced in the minimal AbiWord python
    snippet.
    I can reproduce it on Debian 10(Buster) and Debian 11(Bullseye) with AbiWord
    v3.0.2-8 and v3.0.4~dfsg-2 respectively.

    Bugs found that crash the AbiWord instance:
    1. Resizing a cell in a table vertically
    2. Moving an image to the extreme left/right of the page
    3. Right Click -> Insert Table
    4. Right Click -> Click Paragraph -> Click Tabs
    5. Right Click -> Set Language



    Log when following 3 (Right Click -> Insert Table), in Debian 11
    ```
    (minabi.py:1216): Gtk-CRITICAL **: 12:49:34.135: gtk_builder_get_object:
    assertion 'GTK_IS_BUILDER (builder)' failed

    (minabi.py:1216): Gtk-CRITICAL **: 12:49:34.135: gtk_builder_get_object:
    assertion 'GTK_IS_BUILDER (builder)' failed

    (minabi.py:1216): Gtk-CRITICAL **: 12:49:34.135: gtk_radio_button_get_group:
    assertion 'GTK_IS_RADIO_BUTTON (radio_button)' failed

    (minabi.py:1216): Gtk-CRITICAL **: 12:49:34.135: gtk_builder_get_object:
    assertion 'GTK_IS_BUILDER (builder)' failed

    (minabi.py:1216): Gtk-CRITICAL **: 12:49:34.135: gtk_builder_get_object:
    assertion 'GTK_IS_BUILDER (builder)' failed

    (minabi.py:1216): Gtk-CRITICAL **: 12:49:34.135: gtk_builder_get_object:
    assertion 'GTK_IS_BUILDER (builder)' failed

    (minabi.py:1216): Gtk-CRITICAL **: 12:49:34.135: gtk_spin_button_set_value:
    assertion 'GTK_IS_SPIN_BUTTON (spin_button)' failed

    (minabi.py:1216): Gtk-CRITICAL **: 12:49:34.135: gtk_spin_button_set_value:
    assertion 'GTK_IS_SPIN_BUTTON (spin_button)' failed

    (minabi.py:1216): Gtk-CRITICAL **: 12:49:34.135: gtk_builder_get_object:
    assertion 'GTK_IS_BUILDER (builder)' failed

    (minabi.py:1216): Gtk-CRITICAL **: 12:49:34.135: gtk_toggle_button_get_active:
    assertion 'GTK_IS_TOGGLE_BUTTON (toggle_button)' failed

    (minabi.py:1216): Gtk-CRITICAL **: 12:49:34.135: gtk_widget_set_sensitive:
    assertion 'GTK_IS_WIDGET (widget)' failed
    /usr/lib/python3/dist-packages/gi/overrides/Gtk.py:1632: Warning: invalid
    (NULL) pointer instance
    return _Gtk_main(*args, **kwargs)
    /usr/lib/python3/dist-packages/gi/overrides/Gtk.py:1632: Warning:
    g_signal_connect_data: assertion 'G_TYPE_CHECK_INSTANCE (instance)' failed
    return _Gtk_main(*args, **kwargs)

    (minabi.py:1216): Gtk-CRITICAL **: 12:49:34.137: gtk_window_set_title:
    assertion 'GTK_IS_WINDOW (window)' failed

    (minabi.py:1216): Gtk-CRITICAL **: 12:49:34.137: gtk_builder_get_object:
    assertion 'GTK_IS_BUILDER (builder)' failed

    (minabi.py:1216): Gtk-CRITICAL **: 12:49:34.137: gtk_label_set_text: assertion
    'GTK_IS_LABEL (label)' failed

    (minabi.py:1216): Gtk-CRITICAL **: 12:49:34.137:
    gtk_spin_button_set_increments: assertion 'GTK_IS_SPIN_BUTTON (spin_button)'
    failed

    (minabi.py:1216): Gtk-CRITICAL **: 12:49:34.137: gtk_spin_button_set_range:
    assertion 'GTK_IS_SPIN_BUTTON (spin_button)' failed

    (minabi.py:1216): Gtk-CRITICAL **: 12:49:34.137: gtk_spin_button_set_value:
    assertion 'GTK_IS_SPIN_BUTTON (spin_button)' failed

    (minabi.py:1216): Gtk-CRITICAL **: 12:49:34.137: gtk_builder_get_object:
    assertion 'GTK_IS_BUILDER (builder)' failed

    (minabi.py:1216): Gtk-CRITICAL **: 12:49:34.137: gtk_label_get_label: assertion
    'GTK_IS_LABEL (label)' failed
    Segmentation fault
    ```

    Log when following 4 (Right Click -> Click Paragraph -> Click Tabs), in Debian
    11
    ```
    (minabi.py:1240): Gtk-CRITICAL **: 13:02:57.054: gtk_builder_get_object:
    assertion 'GTK_IS_BUILDER (builder)' failed

    (minabi.py:1240): Gtk-CRITICAL **: 13:02:57.054: gtk_builder_get_object:
    assertion 'GTK_IS_BUILDER (builder)' failed

    (minabi.py:1240): Gtk-CRITICAL **: 13:02:57.054: gtk_window_set_title:
    assertion 'GTK_IS_WINDOW (window)' failed

    (minabi.py:1240): Gtk-CRITICAL **: 13:02:57.054: gtk_builder_get_object:
    assertion 'GTK_IS_BUILDER (builder)' failed

    (minabi.py:1240): Gtk-CRITICAL **: 13:02:57.054: gtk_label_set_text: assertion
    'GTK_IS_LABEL (label)' failed

    (minabi.py:1240): Gtk-CRITICAL **: 13:02:57.054: gtk_builder_get_object:
    assertion 'GTK_IS_BUILDER (builder)' failed

    (minabi.py:1240): Gtk-CRITICAL **: 13:02:57.054: gtk_label_get_label: assertion
    'GTK_IS_LABEL (label)' failed
    Segmentation fault
    ```



    Minimal AbiWord python snippet used:
    ```
    #!/usr/bin/python

    import gi

    gi.require_version('Abi', '3.0')
    from gi.repository import Abi

    gi.require_version('Gtk', '3.0')
    from gi.repository import Gtk

    win = Gtk.Window(title="PyAbiword")
    Abi.init([])
    widget = Abi.Widget()
    win.add(widget)
    win.connect("delete-event", Gtk.main_quit)
    win.show_all()

    Gtk.main()
    ```



    Debian 11(Bullseye):
    libgtk-3-0                     3.24.20-1
    libgtk2.0-bin                  2.24.32-4
    gir1.2-abi-3.0                 3.0.4~dfsg-2 
    libabiword-3.0                 3.0.4~dfsg-2

    Debian 10(Buster):
    libgtk-3-0                     3.24.5-1
    libgtk2.0-0                    2.24.32-3
    gir1.2-abi-3.0                 3.0.2-8
    libabiword-3.0                 3.0.2-8


    Please let me know if any other information is required.
```

</p>
</details>



### Bugs opened in Debian:

`18-Jun` - Browse - Activity fails to start, error `glib-compile-schemas: not found`.
bugs.debian.org/963068

<details>
<summary><strong>Click to view</strong> the complete bug report</summary>
<p>

```markdown

From: Shaan Subbaiah <shaansubbaiah.cs18@bmsce.ac.in>
To: Debian Bug Tracking System <submit@bugs.debian.org>
Subject: sugar-browse-activity: Fails to start, error "glib-compile-schemas: not found"
Date: Thu, 18 Jun 2020 19:30:36 +0530

Package: sugar-browse-activity
Version: 205-2
Severity: important

Dear Maintainer,

*** Reporter, please consider answering these questions, where appropriate ***

   * What led up to the situation?
	Installing sugar-browse-activity.

   * What exactly did you do (or not do) that was effective (or ineffective)?
	Start Browse Activity from Sugar.

   * What was the outcome of this action?
	Browse does not start.

Error in org.laptop.WebActivity-1.log:

sh: 1: glib-compile-schemas: not found
Traceback (most recent call last):
  File "/usr/bin/sugar-activity3", line 5, in <module>
    activityinstance.main()
  File "/usr/lib/python3/dist-packages/sugar3/activity/activityinstance.py", line 230, in main
    instance = create_activity_instance(activity_constructor, activity_handle)
  File "/usr/lib/python3/dist-packages/sugar3/activity/activityinstance.py", line 59, in create_activity_instance
    activity = constructor(handle)
  File "/usr/share/sugar/activities/Browse.activity/webactivity.py", line 192, in __init__
    self._tabbed_view = TabbedView(self)
  File "/usr/share/sugar/activities/Browse.activity/browser.py", line 147, in __init__
    self.settings = _get_local_settings(activity)
  File "/usr/share/sugar/activities/Browse.activity/browser.py", line 129, in _get_local_settings
    source = Gio.SettingsSchemaSource.new_from_directory(path, None, True)
gi.repository.GLib.Error: g-file-error-quark: Failed to open file “/home/ssbc/.sugar/default/org.laptop.WebActivity/data/schemas/gschemas.compiled”: open() failed: No such file or directory (4)

As a workaround, installing libglib2.0-dev package fixes the issue.
Browse is then able to start successfully.

*** End of the template - remove these template lines ***


-- System Information:
Debian Release: bullseye/sid
  APT prefers unstable
  APT policy: (990, 'unstable'), (500, 'stable-updates'), (500, 'testing'), (500, 'stable')
Architecture: amd64 (x86_64)

Kernel: Linux 5.6.0-2-amd64 (SMP w/2 CPU cores)
Locale: LANG=en_IN, LC_CTYPE=en_IN (charmap=UTF-8), LANGUAGE=en_IN:en (charmap=UTF-8)
Shell: /bin/sh linked to /usr/bin/dash
Init: systemd (via /run/systemd/system)
LSM: AppArmor: enabled

Versions of packages sugar-browse-activity depends on:
ii  dconf-gsettings-backend [gsettings-backend]  0.36.0-1
ii  gir1.2-evince-3.0                            3.36.5-2
ii  gir1.2-gdkpixbuf-2.0                         2.40.0+dfsg-5
ii  gir1.2-glib-2.0                              1.64.1-1
ii  gir1.2-gtk-3.0                               3.24.20-1
ii  gir1.2-pango-1.0                             1.44.7-4
ii  gir1.2-rsvg-2.0                              2.48.7-1
ii  gir1.2-soup-2.4                              2.70.0-1
ii  gir1.2-sugarext-1.0                          0.117-1
ii  gir1.2-telepathyglib-0.12                    0.24.1-2+b1
ii  gir1.2-webkit2-4.0                           2.28.2-2+b1
ii  python3                                      3.8.2-3
ii  python3-cairo                                1.16.2-3
ii  python3-dbus                                 1.2.16-2
ii  python3-gi                                   3.36.0-3
ii  python3-sugar3                               0.117-1

Versions of packages sugar-browse-activity recommends:
ii  ca-certificates  20200601

sugar-browse-activity suggests no packages.

-- no debconf information

```

</p>
</details>



### Pull Requests

`21-Jun` - Pippy - Fix dark mode is not set on new tabs [#83](https://github.com/sugarlabs/Pippy/pull/83) - `Merged` [#a0565bd](https://github.com/sugarlabs/Pippy/commit/a0565bddf56fa6f4c305982d10ee53ddacc900a4)


`30-Jun` - Read - Fix wrong logging label on highlighting text [#44](https://github.com/sugarlabs/read-activity/pull/44) - `Merged` [#25f69e4](https://github.com/sugarlabs/read-activity/commit/25f69e41a4fa69d93c73c0c9367b4777a014b1cd)


`08-Jul` - JukeBox - Fix playlist navigation [#31](https://github.com/sugarlabs/jukebox-activity/pull/31) - `Merged` [#e11f40c](https://github.com/sugarlabs/jukebox-activity/commit/e11f40c94c1c6302d3e36ddf4dc8101732ffb9d9)


`24-Jul` - Sugar Toolkit GTK3 - Fix bundlebuilder not handling empty arguments [#452](https://github.com/sugarlabs/sugar-toolkit-gtk3/pull/452) - `Merged` [#3ba3c14](https://github.com/sugarlabs/sugar-toolkit-gtk3/commit/3ba3c1463facdb8fe50f3894e02f16e85b5ebfde)


`29-Jul` - Memorize - Fix TypeError due to Bool arguments in ElementTree [#30](https://github.com/sugarlabs/memorize-activity/pull/30) - `Merged` [#0520ed4](https://github.com/sugarlabs/memorize-activity/commit/0520ed4f0590e70b32099a861c3717273bc950f9)


`02-Aug` - Calculate - Fix issues occured while raising RuntimeError [#69](https://github.com/sugarlabs/calculate-activity/pull/69) - `Merged` [#6be1180](https://github.com/sugarlabs/calculate-activity/commit/6be1180893bd4b31bfcfc64f6e06c5948542c76c)


`08-Aug` - Terminal - Fix issues in theme toggling button [#44](https://github.com/sugarlabs/terminal-activity/pull/44) - `Merged` [#4274006](https://github.com/sugarlabs/terminal-activity/commit/4274006af28024067f54b9ffc432f7c336d10885)


`10-Aug` - Terminal - Fix theme not switching to dark on toggle [#46](https://github.com/sugarlabs/terminal-activity/pull/46) - `Merged` [#ce0f91a](https://github.com/sugarlabs/terminal-activity/commit/ce0f91a02bd183577d8b8fc3cd73c3385f0240f2)


`12-Aug` - Browse - Fix HTTP 403 Error due to urllib user-agent [#114](https://github.com/sugarlabs/browse-activity/pull/114) - `Merged` [#3f07fa5](https://github.com/sugarlabs/browse-activity/commit/3f07fa55014f4caf0ca4d2bd740c2ff51c94ddda)


`19-Aug` - Pippy - Fix no source tab on resume of empty file [#85](https://github.com/sugarlabs/Pippy/pull/85) - `Merged` [#6a2b884](https://github.com/sugarlabs/Pippy/commit/6a2b8844c0a89186d3d73761eaefc3cbef3dd697)



### Other

`09-Mar` - Write - Report issue where Write Activity window could be dragged around in Ubuntu 20.04 packages [#38](https://github.com/sugarlabs/write-activity/issues/38)


`12-Mar` - sugar-arch - Fix installer script for Sugar v0.116 on Arch Linux by Srevin Saju [#79fa4b](https://github.com/srevinsaju/sugar-arch/commit/79fa4be5ef113a8592e1ce332ce6f34e9913db40)


`19-Mar` - sugar-docs - Add guide to logging in with display managers [#e479af](https://github.com/sugarlabs/sugar-docs/commit/e479af49c8aa0b43a0bc8cb0315133e7f8307c65)


`06-Apr` - SwiftFeet - Partial progress in porting activity to Python3 [Github Link](https://github.com/sugarlabs/swiftfeet-activity)


`08-Apr` - sugar-docs - Fix typo in import statement [#5f13ac](https://github.com/sugarlabs/sugar-docs/commit/5f13aceddd029fc0f95d4784fceca8228b4de664) 


`02-May` - Sugar - API Socket: Port to Python3 [#f1ac68](https://github.com/sugarlabs/sugar/commit/f1ac68488631ab153dd31b737819fd5cadc3b158)

&emsp; &emsp; &emsp;└ Sugar - Fix DBusException is not JSON serializable [#9fa8cf](https://github.com/sugarlabs/sugar/commit/9fa8cffb3c50afaeeb7566b14018104b43c7ac59)


`21-Jul` - Find Words - Find fix for error in Web Activity due to SVG [GitHub Comment](https://github.com/sugarlabs/sugar-web/issues/135#issuecomment-663847858)



## Work In Progress

1. I have sent bug reports to the [AbiSource](#bugs-opened-in-abiword) and [Debian](#bugs-opened-in-debian) Bug Tracking Systems.
Will continue to follow up on the response from the organizations.

2. Try to find fix for Sugar [#931](https://github.com/sugarlabs/sugar/issues/931)


## Outcome

Almost all issues found by me, while testing Sugar on Debian, which I had opened in the Sugar Labs GitHub over the GSoC timeline, have been fixed. (All but Sugar [#931](https://github.com/sugarlabs/sugar/issues/931) have been fixed)

Fortunately, only 1 issue found was due to Debian packaging, (in `sugar-browse-activity`) and a bug report has been submitted for the same.

The [Debian Sugar Team](https://salsa.debian.org/pkg-sugar-team) have done an excellent job, as I found no other issues in Sugar and its activities due to Debian packaging.

>**Current state of Debian Sugar Packages**
As of `25-Aug-2020` the [Debian Sugar Team](https://salsa.debian.org/pkg-sugar-team) repository contains 14 Activity packages, of which 12 activities (Browse, Calculate, Chat, EToys, Imageviewer, Jukebox, Log, Memorize, Pippy, Read, Terminal, Write) are available in the Debian Bullseye repositories. The remaining 2 activities (Finance, Record) are not available in the Debian Bullseye packages.
>>1. `sugar-record-activity` is v102 in the Debian Archive, and is based on Python2. The latest release in the Sugar Labs GitHub is v201, based on Python3. The package was removed in 2016 in bug 813258, 799709, 790157 because it depended on GStreamer 0.10 which was dropped from Debian. Record v200 had fixed this by using GStreamer 1.0.
>>2. `sugar-finance-activity` is v12 in the Debian Archive, and is based on Python2. The latest release in the Sugar Labs GitHub is v15, based on Python3. Intent to package was in 2015 in bug 783203, and disowned in 2016.


I have also created documentation on setting up Sugar on Debian 11 [install-sugar-debian11.md](https://github.com/shaansubbaiah/Sugar-Useful-Info/blob/master/install-sugar-debian11.md) and collected snippets I used, that may help other Sugar contributors [useful-stuff.md](https://github.com/shaansubbaiah/Sugar-Useful-Info/blob/master/useful-stuff.md)


**Learning outcome**

This has been a wonderful experience for me, a kick start to open-source development.

It has helped me explore:
- Python3
- Debian's BTS and packaging tools
- GTK+ 3
- Bash scripting
- SSH
- Automation tools like Xdottool and Autohotkey
- Setting up VM's with KVM and Virt-Manager
- Debugging with GDB and PDB
- Git
- Python 2to3
- Multitail and setting up its config
- Creating TCP Dumps to debug Web Activities 


<div align="center">
    I'd like to thank Sugar Labs and Google for making this possible.
</div>
