Port Sugar and Core Activities to Python 3
------------------------------------------

***Google Summer of Code, 2020 @[sugarlabs](https://github.com/sugarlabs)***

*Name: Saumya Mishra*

*Email: 2017230@iiitdmj.ac.in*

### Project Overview

One of the main aims of the project was to review the Sugar source code changes since 0.112 that were made for porting to Python 3. I have worked on testing and fixing regressions in Sugar, sugar-toolkit-gtk3, and core activities. I have worked on Port Telepathy bindings to TelepathyGLib, GObject to GLib, Port to Gtk3, and Port to latest Sugargame in sugar activities. I have also worked on Port to CollabWrapper as many activities support dbus.ExportedGObject upstream class which has gone away in Python 3.

### Experience

It has been a stunning experience overall. It has helped me in learning techniques of code-debugging, optimization, maintenance, and user experience. It has taught me the value of effective communication. I would especially like to mention James for helping throughout the period with his constructive feedback and honest reviews of my work which have proved to be a bar-raiser for me. Those feedbacks encouraged me to be more focused while working and write quality code. Also, Ibiam helped throughout the journey from 1st day till the end by his great reviews. Rahul, he helped me to remain on track every time and to make sure things are going well.
The mentors and community members are supportive, who are always willing to help to the greatest extent that they can. I would also say about Srevin and Jui for being helpful all the time.

Apart from that, I have learned many technical skills that will help me in future endeavors. I have learned a lot about Python, GTK+, TelepathyGLib(DBus), Pygame, GDB & PDB, python3-coverage, and also some informative things about Ubuntu. By far the biggest challenge I faced during my work was to Port to CollabWrapper.


### Work Done

This section includes all the work I have done related to the project along with some miscellaneous fixes.

#### Review the Sugar source code changes since 0.112 that were made for porting to Python 3, & Fix regressions in Sugar, the Toolkit

   **Sugar**: Tested with Ubuntu 20.04 sucrose package version 0.117 and review every single commit.  

   - Fix Traceback occurred in Group View when a friend is added or removed - [#921](https://github.com/sugarlabs/sugar/pull/921) 
   - Fix Gtk-Warning in language control panel which is a fix for issue [#855](https://github.com/sugarlabs/sugar/issues/855)   - [ea2cd9c](https://github.com/sugarlabs/sugar/commit/ea2cd9c7b0656abff6d459b8ad74a0f52e6f078e)
   - Use bytes for SSIDs which is a fix for several errors "string argument without an encoding" - [9900ccf](https://github.com/sugarlabs/sugar/commit/9900ccfbe1f6029ac16b0243a2f0789e36f81629)
   - Fix Attribute Error in modem control panel - [e0496b0](https://github.com/sugarlabs/sugar/commit/e0496b06d6e8f54f556b50d32f81e18819eb16ae)
   - Fix Attribute Error in Random Favorites View which is a fix for issue reported by shaan [#923](https://github.com/sugarlabs/sugar/issues/923) - [118fe73](https://github.com/sugarlabs/sugar/commit/118fe73eee4177833dc692e1172451656f580b7f)

   **sugar-toolkit-gtk3** : Changes made can be seen in [#921](https://github.com/sugarlabs/sugar-toolkit-gtk3/pull/451)
   
   - Port to Python3 - remove the use of WebKit1 ( WebKit1 API is not available for Python 3) [8d4a857](https://github.com/sugarlabs/sugar-toolkit-gtk3/commit/8d4a857f3d4b91a192d93a64bd136d7106cbe1ae) 
   - Port to Python3 - get_preview returns bytes ( Change made in the doc)  [b838835](https://github.com/sugarlabs/sugar-toolkit-gtk3/commit/b83883500e0f84f5f9d111ee83c2e7444855d977)
   - Change type of units for zoom ( As zoom accepts float as well as int units) [68e57ef](https://github.com/sugarlabs/sugar-toolkit-gtk3/commit/68e57eff8458a89704bfc5b22f171514948bacd0)

#### Fix Regressions and Port to Python 3 in Core Activities of Sugar

   **Browse** : Changes made can be seen in [#111](https://github.com/sugarlabs/browse-activity/pull/111)
   
   - Port to Python 3 - fix TypeError [1374056](https://github.com/sugarlabs/browse-activity/pull/111/commits/13740569a1d99e13760e2d1f2e3a829844879ec3)
   - Expected type 'int', got 'float' instead [0d4efb5](https://github.com/sugarlabs/browse-activity/pull/111/commits/0d4efb51b6e1bb6cd8b11262e729c9a8e8334087)
   - Use GLib.markup_escape_text() before parsing uri and title [eada142](https://github.com/sugarlabs/browse-activity/pull/111/commits/eada14236240cdac162dd0a3be63249e78721d41)
   - Use File transfer constants [3f74433](https://github.com/sugarlabs/browse-activity/pull/111/commits/3f7443355e265440eabbbe105f8edbf7f423abf4)
   - Encode uri from str to bytes [e75d674](https://github.com/sugarlabs/browse-activity/pull/111/commits/e75d674149e296905e3e9b5358fbd8e1f81e29fe)
   - Replace error with debug [3f4df23](https://github.com/sugarlabs/browse-activity/pull/111/commits/3f4df23b63251bf5b96cd7b88721a1702a4dc988)
   - Fix AttributeErrors in DummyBrowser [81fe647](https://github.com/sugarlabs/browse-activity/pull/111/commits/81fe647f57bb18a84756f512a5103e1508a6889c)

   **Calculate** : Changes made can be seen in [#68](https://github.com/sugarlabs/calculate-activity/pull/68/)
   
   - Fix round function issue [43a17cc](https://github.com/sugarlabs/calculate-activity/pull/68/commits/43a17cc2646ee7f69d6826c3ae5576f089a69d22)
   - Fix AttributeError raise while plotting [e4f1818](https://github.com/sugarlabs/calculate-activity/pull/68/commits/e4f18187a6aa81f3dbbaad565f59bb3dca5a740b)
   - Fix built-in variable names [9ac89cb](https://github.com/sugarlabs/calculate-activity/pull/68/commits/9ac89cbf02e03e4d00159c52bd84117dabb6f4dd)
   - Fix Error message format [7c9118f](https://github.com/sugarlabs/calculate-activity/pull/68/commits/7c9118fde44fcc5fe911245452a21ee24112b3b2)
   - Fix - Submitting/pressing ‘=’ without entering any value throws [ca8b10e](https://github.com/sugarlabs/calculate-activity/pull/68/commits/ca8b10eb968d89895ee98fe886f6769c157ba30d)
   - Fix traceback occurred while clicking on 'pi' and 'e' [14c1aeb](https://github.com/sugarlabs/calculate-activity/pull/68/commits/14c1aebf509798d2b362c9fb943e05afdf7251a7)
   
   **tutleart-activity**: Following changes have merged
   
   - Fix incomplete port to Gtk3 [e2729c7](https://github.com/sugarlabs/turtleart-activity/commit/e2729c79de6fb07cb04017534a90b8d23dbc85e2)
   - Minor fixes in sprites.py [#81](https://github.com/sugarlabs/turtleart-activity/pull/81)
   - flake8 opportunities [#79](https://github.com/sugarlabs/turtleart-activity/pull/79)
   
   **Write** : Fix Port to Python 3 regressions in [#44](https://github.com/sugarlabs/write-activity/pull/44)
   
   - Fix error occurred while pasting images using CTRL + V [5e7cbfe](https://github.com/sugarlabs/write-activity/pull/44/commits/5e7cbfee225f8c4c6a41e91b6b20cc7068ed3ed2)
   - Remove unnecessary error printed in logs [183ef0b](https://github.com/sugarlabs/write-activity/pull/44/commits/183ef0b8003d45ef8dd04e1d3fd01fa99b1f5acc)
   
   **Chat** : Fix Gtk Clipboard issue [69e4701](https://github.com/sugarlabs/chat/commit/69e4701c79677dac900f90b6fd5f6da9d766729c)
   
#### Fix Activities

The following changes in activities mainly include Port Telepathy bindings to TelepathyGLib,  Port activities to Python 3, and Port to the latest Sugargame or CollabWrapper library. 

- **VncLauncher**: Several changes have merged in sugarlabs codebase. See [#9](https://github.com/sugarlabs/VncLauncher/pull/9). 
    - Port to Gtk 3
    - Port to Python 3
    - Fix feed_child type-error
    - Fix Gdk.RGBA color parsing
    - Remove jarabe.model.network
    - Remove embedded x11vnc binaries
    - Add warning for missing dependency
    - flake8 fixes
    - Fix several Vte errors
        - Fix Vte Focus
        - Fix TypeErrors
        - Fix configparser argument issue
        - Fix Exit of Vte Terminal with CTRL + D or exit
    - Add message dialog with instructions to install x11vnc
    - Fix multiple IP addresses issue
    - Update README.md 
        - Add x11vnc dependency for fedora, Ubuntu and Debian
        - Add info required to install VNC Viewer
        - Modify how to use section
    
- **Frotz** : Several changes have merged in sugarlabs codebase. See [#7](https://github.com/sugarlabs/Frotz/pull/7).
    - Port to Gtk 3
    - Port to Python 3
    - Remove libvte and vte binaries
    - Fix Several Vte.Terminal Errors
    - Fix Gdk.color_parse error
    - Remove binary files and use system-specific binary for frotz
    - Several updates in README.md
    - Fix Quit method TypeError
    - Change temp file permission to 0o644
    - Fix several config parser errors
    - Add message dialog (Alert) to install frotz
    - Add alert to start the game after installation of frotz
    - Add requirement of Sudo privilege while installing frotz
    - Add font_size configured by sugar
    - Fix: Opening Url button
    
- **Polari**: Following changes have merged in sugarlabs codebase. See [#7](https://github.com/sugarlabs/PolariActivity/pull/7)
    - Port to Python 3
    - Fix TypeErrors- Item 0: must be number, not str
    - Remove upstream zope, constantly, twisted and incremental to support the use of distro-specific packages
    - Add --from-code parameter to xgettext for a python3 activity
    - Update README and add the use of python3-twisted
    - Fix UnicodeDecodeError seen while making a connection

- **yupana**: Following changes have merged in sugarlabs codebase. See [#4](https://github.com/sugarlabs/yupana/pull/4)
    - Port to Python3
    - Port from telepathy to TelepathyGLib
    - Port to Gtk3 - missing shared_activity
    - Fix TypeError while writing svg_string in pixbuf
    - `Work in Progress` - Port to CollabWrapper [#6](https://github.com/sugarlabs/yupana/pull/6)
    
- **flipsticks** : Following changes have merged in sugarlabs codebase. See [#6](https://github.com/sugarlabs/flipsticks/pull/6/commits)
    - Review and Fix Incomplete Port to Gtk3
    - Port to TelepathyGLib 
    - Port to Python 3
    - Fix TypeError - Item 0: must be number not str
    - Fix Snapshot button
    - Use Gdk.flush to fix cursor changes
    
- **locosugar** : Following changes have merged to sugarlabs codebase. See [#14](https://github.com/sugarlabs/locosugar/pull/14/commits)
    - Port from GObject to GLib
    - Port to Python 3
    - Fix full screen & Toolbar issue
    - Fix Warning - erroneous pipeline: syntax error, use a modern player module that supports the PyGObject GST module to fix this. 
    - Fix Greeting message window size
    - Fix screen resolution and make screen compatible with all screen sizes instead of only 1200X900
    - Change in-built variable names
 
- **ruler**: Following changes have merged to sugarlabs codebase. See [#9](https://github.com/sugarlabs/ruler/pull/9) & [#12](https://github.com/sugarlabs/ruler/pull/12/commits)
    - Fix fails with ubuntu 18.04 error [#6](https://github.com/sugarlabs/ruler/issues/6)
    - Fix issue - maintain consistency with draw signal callback [#10](https://github.com/sugarlabs/ruler/issues/10)
    - Remove use of GdkX11 and change to Gdk
    - Fix resolution of ruler by adding offsets from both sides
    - Port to Python 3
    - Fix PyGIWarnings
    - Remove use of check_output method 
    
- **solar-system**: Following changes have merged to sugarlabs codebase. See [#3](https://github.com/sugarlabs/solar-system/pull/3)
    - Port to WebKit 2
    - Port to Python 3
    - Add license metadata and file to match source code
    - Add missing setup.py
    - Disable sharing
    - Fix CPU looping and high power draw
    - Remove #! lines from files that are not executed by the shell
    - Remove selected body log message
    
- **edit-fonts-activity** : Following changes have merged to sugarlabs codebase. See [#102](https://github.com/sugarlabs/edit-fonts-activity/pull/102/commits)
    - Port from GConf to Gio.Settings
    - Fix several flake8 warnings
    
- **cartoon-builder** : Following changes have been made so far. See [#13](https://github.com/sugarlabs/cartoon-builder/pull/13)
    - Port to TelepathyGLib
    - Port to Python 3
    - Fix several TypeErrors and AttributeErrors
    - Remove toolkit.json and use python's built-in json 
    - Fix Activity Resolution
    - `Work Remaining to be done` Port to Collabwrapper     
    
- **reflect** : Following changes have been made so far. See [#15](https://github.com/sugarlabs/reflect/pull/15/commits)
    - Review : Port from statvfs to os module 
    - Review : Port to TelepathyGLib
    - Review : Port to Python 3
    - Fix several log calls
    - Fix TypeError related to configparser
    - Update collabwrapper from upstream 
    - `Work Remaining to be done` Port to CollabWrapper
    
- **CookieSearch** : Following Changes have been made so far. See [#21](https://github.com/sugarlabs/cookie-search-activity/pull/21/commits)
    - Port to Python 3
    - Port to TelepathyGLib
    - Fix Gtk Clipboard TypeError
    - Fix TypeError while writing svg_string in pixbuf
    - `Work Remaining to be done` Port to CollabWrapper

- **activity-turtle-flags** : Following Changes have been made so far. See [#8](https://github.com/sugarlabs/activity-turtle-flags/pull/8)
    - Rebase and merge with TurtleArt
    - Port from GStreamer Gst.Message.structure to get_structure()
    - Port to Python 3
    - Port to Gtk 3
    - Port from GConf to GioSettings
    
- **arithmetic** : Following Changes have been made so far. See [#6](https://github.com/sugarlabs/arithmetic/pull/6) & [#7](https://github.com/sugarlabs/arithmetic/pull/7)
    - Fix error faced while opening activity icon
    - Port to Gtk 3
    - Port to Python 3
    - Port from gobject to GObject and GLib
    - merge dobject submodule with repository
    - Port from telepathy to TelepathyGLib
    - Fix several AttributeErrors and TypeErrors
    - `Work Remaining to be done` Fix Activity Display
    
- **starchart**: Following Changes have been made so far. See [#8](https://github.com/sugarlabs/starchart/pull/8/commits)
    - Review: Port to Gtk 3
    - Port to Python 3
    - Fix Redraw of context while clicking on the stop button
    - Restructuring of code by removing some global variables and use with-in class variables
    - `Work Remaining to be done` Several errors and unexpected behavior noticed while reviewing source code. The activity needs proper restructuring of code with certain Oops principles
    
- **stick-hero-activity**: Following Changes have been made so far. See [#29](https://github.com/sugarlabs/stick-hero-activity/pull/29)
    - Port to latest Sugargame
    - Port to Python 3
    - Fix the play button
    - Fix Issue [#20](https://github.com/sugarlabs/stick-hero-activity/issues/20) to maintain the legibility of the code.
    - `Work Remaining to be done` Fix several Pygame related warning & errors
    
- **deducto**: Port to CollabWrapper. See [#13](https://github.com/sugarlabs/deducto/pull/13)
- **colordeducto** : Port to CollabWrapper. See [#16](https://github.com/sugarlabs/colordeducto/pull/16)
- **showntell-activity** : Following Changes have been made so far. See [#16](https://github.com/sugarlabs/showntell-activity/pull/16/commits)
    - Port to Python 3 
    - Fix Several AttributeErrors
    - Replace path.py and use os.path instead
    - `Work Remaining to be done` Several errors noticed while testing needs more fixes.
  
- **geotonky-activity**: Following Changes have been made so far. See [#4](https://github.com/sugarlabs/geotonky-activity/pull/4/commits)
    - Port to Python 3
    - Port to latest Sugargame
    - `Work Remaining to be done` Huge amount of Delay has seen. Sugargame is used differently from other sugar activities.
    
- **infoslicer**: Following Changes have been made so far. See [#34](https://github.com/sugarlabs/infoslicer/pull/34)
    - Port to Python 3
    - Port from sgmllib to html.parser
    - `Work Remaining to be done` Fix RuntimeError: generator raised StopIteration
    - `Work Remaining to be done` Remove BeautifulSoup and use html.parser needs redesigning of code

### Opened Issues and other fixes

- **story** : Add border to story entry [ab0bfe6](https://github.com/sugarlabs/story/commit/ab0bfe6b9306069f183ec846cef877455911279f)
- **Write** : No collaboration found [#40](https://github.com/sugarlabs/write-activity/issues/40)
- **Log-activity** : Gtk-CRITICAL Warning [#21](https://github.com/sugarlabs/log-activity/issues/21)
- **VncLauncher** : 
     - Register An mDNS name on network [#11](https://github.com/sugarlabs/VncLauncher/issues/11) 
     - Feature : Add Collaboration [#10](https://github.com/sugarlabs/VncLauncher/issues/10)
- **showntell-activity** : Implementation Issue [#17](https://github.com/sugarlabs/showntell-activity/issues/17)
- **pukllanapac** : 
     - gi.repository.GLib.Error: rsvg-error-quark: Error displaying image [#12](https://github.com/sugarlabs/pukllanapac/issues/12) 
     - Above mentioned error is fixed in [f9b679](https://github.com/sugarlabs/pukllanapac/commit/f9b67979dbe8cf2e8c4024b06eba52d0ef9d6e41)
- **recall** : Fix Pango-Warning [8c4b49](https://github.com/sugarlabs/recall/commit/8c4b49f00d231fedf4ed50a1f7f017811fdc8dd8)
- **mastermind-activity** : IndexError: list index out of range [#5](https://github.com/sugarlabs/mastermind-activity/issues/5)
- **infoslicer** : Fix ObjectChooser [#6](https://github.com/sugarlabs/infoslicer/issues/35)
- **Bridge** : 
     - Replace box2d binaries with Box2D upstream [#19](https://github.com/sugarlabs/Bridge/pull/19) 
     - fix several flake8 errors and warnings [#17](https://github.com/sugarlabs/Bridge/pull/17) 
- **physics** :
     - Fix TypeError: 'NoneType' object is not subscriptable [12c5f70](https://github.com/sugarlabs/physics/commit/12c5f706ad57ab236d615029021d1fc6af306bd9) 
     - Fix TypeError: %X format: an integer is required, not float [951b327](https://github.com/sugarlabs/physics/commit/951b32776d582f792f6e4ee266012be2c0378f21)
- **sugarchess** : Fix undo button of sugarchess while playing in Robot mode as well as in person mode [#14](https://github.com/sugarlabs/sugarchess/pull/14)
- **numbers** : Fix Value Error due to non-integer stop for randrange [#6](https://github.com/sugarlabs/numbers/pull/6)
