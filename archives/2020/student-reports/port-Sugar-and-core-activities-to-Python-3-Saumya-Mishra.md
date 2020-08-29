Port Sugar and Core Activities to Python 3
------------------------------------------

***Google Summer of Code, 2020 @[sugarlabs](https://github.com/sugarlabs)***

*Name: [Saumya Mishra](https://github.com/Saumya-Mishra9129)*

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

|   Repositories   |           Work Done           |      Link to work      |
|-------------------|------------------------------|------------------------|
| **Sugar**| <br> Tested with Ubuntu 20.04 sucrose package version 0.117 and review every single commit.<br> Following changes have merged to sugarlabs codebase: <ul><li>Fix Traceback occurred in Group View when a friend is added or removed - [#921](https://github.com/sugarlabs/sugar/pull/921) </li><li>Fix Gtk-Warning in language control panel which is a fix for issue - [#855](https://github.com/sugarlabs/sugar/issues/855)</li><li>Use bytes for SSIDs which is a fix for several errors "string argument without an encoding"</li><li>Fix Attribute Error in modem control panel</li><li>Fix Attribute Error in Random Favorites View which is a fix for issue reported by shaan - [#923](https://github.com/sugarlabs/sugar/issues/923) </li></ul>| <ul><li>[Coerce BaseBuddyModel.props.key to str](https://github.com/sugarlabs/sugar/commit/58101044fc10ef2dc9e45f0998053bd3ec67e717)</li><li>[Fix AttributeError in Random Favorites View](https://github.com/sugarlabs/sugar/commit/ea2cd9c7b0656abff6d459b8ad74a0f52e6f078e)</li><li>[Fix AttributeError in modem control panel](https://github.com/sugarlabs/sugar/commit/ea2cd9c7b0656abff6d459b8ad74a0f52e6f078e)</li><li>[Use bytes for SSIDs](https://github.com/sugarlabs/sugar/commit/e0496b06d6e8f54f556b50d32f81e18819eb16ae)</li><li>[Fix AttributeError in Random Favorites View ](https://github.com/sugarlabs/sugar/commit/118fe73eee4177833dc692e1172451656f580b7f)</li></ul> |
|**sugar-toolkit-gtk3**|  <br> Changes made can be seen in [#451](https://github.com/sugarlabs/sugar-toolkit-gtk3/pull/451)`MERGED`. <ul><li> Port to Python3 - remove the use of WebKit1 ( WebKit1 API is not available for Python 3)</li><li>Port to Python3 - get_preview returns bytes ( Change made in the doc)</li><li>Change type of units for zoom ( As zoom accepts float as well as int units)</li></ul> | <ul><li>[Port to Python 3(Webkit1)](https://github.com/sugarlabs/sugar-toolkit-gtk3/commit/8d4a857f3d4b91a192d93a64bd136d7106cbe1ae)</li><li>[Port to Python 3 (get_preview)](https://github.com/sugarlabs/sugar-toolkit-gtk3/commit/b83883500e0f84f5f9d111ee83c2e7444855d977)</li><li>[Change made in doc](https://github.com/sugarlabs/sugar-toolkit-gtk3/commit/68e57eff8458a89704bfc5b22f171514948bacd0)</li></ul>|
   
#### Fix Regressions and Port to Python 3 in Core Activities of Sugar

|   Activity Name   |           Work Done          |
|-------------------|------------------------------|
| **Browse**| <br> Changes made can be seen in [#111](https://github.com/sugarlabs/browse-activity/pull/111) `MERGED` <ul><li>Port to Python 3 - fix TypeError [1374056](https://github.com/sugarlabs/browse-activity/pull/111/commits/13740569a1d99e13760e2d1f2e3a829844879ec3) </li><li>Expected type 'int', got 'float' instead [0d4efb5](https://github.com/sugarlabs/browse-activity/pull/111/commits/0d4efb51b6e1bb6cd8b11262e729c9a8e8334087)</li><li>Use GLib.markup_escape_text() before parsing uri and title [eada142](https://github.com/sugarlabs/browse-activity/pull/111/commits/eada14236240cdac162dd0a3be63249e78721d41)</li><li>Use File transfer constants [3f74433](https://github.com/sugarlabs/browse-activity/pull/111/commits/3f7443355e265440eabbbe105f8edbf7f423abf4)</li><li>Replace error with debug [3f4df23](https://github.com/sugarlabs/browse-activity/pull/111/commits/3f4df23b63251bf5b96cd7b88721a1702a4dc988) </li><li>Fix AttributeErrors in DummyBrowser [81fe647](https://github.com/sugarlabs/browse-activity/pull/111/commits/81fe647f57bb18a84756f512a5103e1508a6889c)</li><li>Encode uri from str to bytes [e75d674](https://github.com/sugarlabs/browse-activity/pull/111/commits/e75d674149e296905e3e9b5358fbd8e1f81e29fe)</li></ul>|
|**Calculate**|  <br> Changes made can be seen in [#68](https://github.com/sugarlabs/calculate-activity/pull/68/) `MERGED` <ul><li>Fix round function issue [43a17cc](https://github.com/sugarlabs/calculate-activity/pull/68/commits/43a17cc2646ee7f69d6826c3ae5576f089a69d22)</li><li> Fix AttributeError raise while plotting [e4f1818](https://github.com/sugarlabs/calculate-activity/pull/68/commits/e4f18187a6aa81f3dbbaad565f59bb3dca5a740b)</li><li> Fix built-in variable names [9ac89cb](https://github.com/sugarlabs/calculate-activity/pull/68/commits/9ac89cbf02e03e4d00159c52bd84117dabb6f4dd)</li><li>Fix Error message format [7c9118f](https://github.com/sugarlabs/calculate-activity/pull/68/commits/7c9118fde44fcc5fe911245452a21ee24112b3b2)</li><li>Fix - Submitting/pressing ‘=’ without entering any value throws [ca8b10e](https://github.com/sugarlabs/calculate-activity/pull/68/commits/ca8b10eb968d89895ee98fe886f6769c157ba30d)</li><li> Fix traceback occurred while clicking on 'pi' and 'e' [14c1aeb](https://github.com/sugarlabs/calculate-activity/pull/68/commits/14c1aebf509798d2b362c9fb943e05afdf7251a7)</li></ul>|
|**tutleart-activity**| <br> Following changes have merged in sugarlabs codebase: <ul><li>Fix incomplete port to Gtk3 [e2729c7](https://github.com/sugarlabs/turtleart-activity/commit/e2729c79de6fb07cb04017534a90b8d23dbc85e2) </li><li>Minor fixes in sprites.py [#81](https://github.com/sugarlabs/turtleart-activity/pull/81)</li><li>flake8 opportunities [#79](https://github.com/sugarlabs/turtleart-activity/pull/79)</li></ul>|
|**Write**| <br> Fix Port to Python 3 regressions in [#44](https://github.com/sugarlabs/write-activity/pull/44) `MERGED` <ul><li>Fix error occurred while pasting images using CTRL + V [5e7cbfe](https://github.com/sugarlabs/write-activity/pull/44/commits/5e7cbfee225f8c4c6a41e91b6b20cc7068ed3ed2)</li><li>Remove unnecessary error printed in logs [183ef0b](https://github.com/sugarlabs/write-activity/pull/44/commits/183ef0b8003d45ef8dd04e1d3fd01fa99b1f5acc)</li></ul>|
| **Chat** | <br> Following changes have merged to sugarlabs codebase <ul><li> Fix Gtk Clipboard issue [69e4701](https://github.com/sugarlabs/chat/commit/69e4701c79677dac900f90b6fd5f6da9d766729c)</li></ul>|
 
#### Fix Activities

The following changes in activities mainly include Port Telepathy bindings to TelepathyGLib,  Port activities to Python 3, and Port to the latest Sugargame or CollabWrapper library. This section contains all **merged** commits.


|   Activity Name   |           Work Done          |      Link to commit      |
|-------------------------|---------------------------------|--------------------------------|
| **VncLauncher**| <br> Several changes have merged in sugarlabs codebase: <ul><li> Port to Gtk 3, Python 3 </li><li>Fix Gdk.RGBA color parsing and Remove jarabe.model.network</li><li> Remove embedded x11vnc binaries </li><li> Fix several Vte errors : Fix Vte Focus, Fix TypeErrors, Fix configparser argument issue & Fix Exit of Vte Terminal with CTRL + D or exit</li><li> Fix multiple IP addresses issue </li><li>Update README.md : Add x11vnc dependency for fedora, Ubuntu and Debian, Add info required to install VNC Viewer &  Modify how to use section  </li></ul>|[Link](https://github.com/sugarlabs/VncLauncher/pull/9/commits) |
|**Frotz**| <br> Several changes have merged in sugarlabs codebase: <ul><li> Port to Gtk 3, Python 3 </li><li> Remove libvte and vte binaries </li> <li> Remove binary files and use system-specific binary for frotz </li><li> Add message dialog (Alert) to install frotz, Add alert to start the game after installation of frotz </li><li> Fix Several Vte.Terminal Errors, Fix TypeError related to configparser </li><li> Add font_size configured by sugar </li><li>  Fix: Opening Url button </li></ul>|[Link](https://github.com/sugarlabs/Frotz/pull/7/commits)|
|**Polari**|<br> Following changes have merged in sugarlabs codebase: <ul><li> Port to Python 3 </li><li>Remove upstream zope, constantly, twisted and incremental to support the use of distro-specific packages </li><li>Update README and add the use of python3-twisted </li><li>Fix UnicodeDecodeError seen while making a connection</li></ul>|[Link](https://github.com/sugarlabs/PolariActivity/pull/7/commits)|
|**activity-turtle-flags**|<br> Following changes have merged in sugarlabs codebase: <ul><li> Rebase and merge with TurtleArt</li><li> Port from GStreamer Gst.Message.structure to get_structure()</li><li> Port to Python 3</li><li>Port to Gtk 3</li><li>Port from GConf to GioSettings</li></ul>|[Link](https://github.com/sugarlabs/activity-turtle-flags/pull/8)|
|**yupana**|<br> Following changes have merged in sugarlabs codebase:<ul><li> Port to Python3</li><li>Port to Gtk 3</li><li>Port from telepathy to TelepathyGLib</li><li>`Work in Progress` - Port to CollabWrapper [#6](https://github.com/sugarlabs/yupana/pull/6)</li> </ul>|[Link](https://github.com/sugarlabs/yupana/commit/15ec0979b6774f4c89e172729a2f0d1064a81445)<br>[Link](https://github.com/sugarlabs/yupana/commit/dd0e9f4c4097f0ee91d4b8c365abf5e544f867ea)|
|**flipsticks**|<br> Following changes have merged in sugarlabs codebase:<ul><li>Review and Fix Incomplete Port to Gtk3 </li><li> Port to Python 3, Port to TelepathyGLib </li><li>Fix Snapshot button </li><li>Use Gdk.flush to fix cursor changes </li></ul>|[Link](https://github.com/sugarlabs/flipsticks/pull/6/commits) |
|**ruler**|<br> Following changes have merged in sugarlabs codebase: <ul><li>  Fix fails with ubuntu 18.04 error [#6](https://github.com/sugarlabs/ruler/issues/6) </li><li> Fix issue - maintain consistency with draw signal callback [#10](https://github.com/sugarlabs/ruler/issues/10) </li><li>Fix resolution of ruler by adding offsets from both sides </li><li>Port to Python 3 </li></ul>|[Link](https://github.com/sugarlabs/ruler/pull/9/commits) <br> [Link](https://github.com/sugarlabs/ruler/pull/12/commits)|
|**solar-system**|<br> Following changes have merged in sugarlabs codebase: <ul><li>Port to WebKit 2, Python 3</li><li>Fix CPU looping and high power draw</li><li>Add missing setup.py</li><li>Add license metadata and file to match source code</li></ul>|[Link](https://github.com/sugarlabs/solar-system/commit/d22bef85f8dbecb161ea77a0c8f86bb462f5ba14)|
|**edit-fonts-activity**|<br> Following changes have merged in sugarlabs codebase: <ul><li> Port from GConf to Gio.Settings </li><li>Fix several flake8 warnings</li></ul>|[Link](https://github.com/sugarlabs/edit-fonts-activity/commit/958d730a39d2dc0d753e77e70646965f8ee7fa86) <br> [Link](https://github.com/sugarlabs/edit-fonts-activity/commit/29c13d6fe69159acffc30c4bca052e8cb010adb1)|
| **locosugar**|<br> Following changes have merged in sugarlabs codebase: <ul><li> Port from GObject to GLib </li><li> Port to Python 3 </li><li> Fix full screen & Toolbar issue</li><li>Fix Warning - erroneous pipeline: syntax error, use a modern player module that supports the PyGObject GST module to fix this</li><li>Fix Greeting message window size</li><li>Fix screen resolution and make screen compatible with all screen sizes instead of only 1200X900</li></ul>|[Link](https://github.com/sugarlabs/locosugar/pull/14/commits)|
|**training-activity**|<br> Following changes have merged in sugarlabs codebase: <ul><li> Port from GConf to Gio.Settings </li><li>Port to Python 3</li></ul>|[Link](https://github.com/sugarlabs/training-activity/pull/2/commits/6438c3c85d474d848cf905e40a66c35e5836249c)|

    
#### Work Remaining to be done

This section includes all the activities I have worked on, but due to some blockers, I couldn't get them to merge. But the work done has been reviewed by mentors once.

|   Activity Name   |           Work Done          |      Link to Pull Request      |
|-------------------------|---------------------------------|--------------------------------|
|**cartoon-builder**| <br> Following changes have been made so far: <ul><li> Port to TelepathyGLib </li><li> Port to Python 3 </li><li> Fix several TypeErrors and AttributeErrors </li><li> Remove toolkit.json and use python's built-in json </li><li> Fix Activity Resolution </li><li> `Blocker` Port to Collabwrapper </li></ul> | [#13](https://github.com/sugarlabs/cartoon-builder/pull/13) | 
|**reflect**|<br>Following changes have been made so far: <ul><li> Review : Port from statvfs to os module </li><li> Review : Port to TelepathyGLib </li> <li> Review : Port to Python 3 </li><li> Fix several log calls </li><li> Fix TypeError related to configparser </li><li> Update collabwrapper from upstream </li><li> `Blocker` Port to CollabWrapper </li></ul>|[#15](https://github.com/sugarlabs/reflect/pull/15/commits)|
|**CookieSearch**|<br>Following changes have been made so far: <ul><li> Port to Python 3 </li><li>Port to TelepathyGLib </li><li>Fix Gtk Clipboard TypeError </li><li>Fix TypeError while writing svg_string in pixbuf</li><li> `Blocker` Port to CollabWrapper </li></ul> |[#21](https://github.com/sugarlabs/cookie-search-activity/pull/21/commits)|
|**arithmetic**|<br>Following changes have been made so far: <ul><li> Fix error faced while opening activity icon</li><li>Port to Gtk 3</li><li>Port to Python 3</li><li>Port from gobject to GObject and GLib</li><li>merge dobject submodule with repository</li><li> Port from telepathy to TelepathyGLib</li><li>Fix several AttributeErrors and TypeErrors </li><li> `Blocker` Fix Activity Display </li></ul>|[#7](https://github.com/sugarlabs/arithmetic/pull/7)|
|**starchart**|<br>Following changes have been made so far: <ul><li> Review: Port to Gtk 3 </li><li> Port to Python 3 </li><li>Fix Redraw of context while clicking on the stop button  </li><li>Restructuring of code by removing some global variables and use with-in class variables </li><li> `Blocker` Several errors and unexpected behavior noticed while reviewing source code. The activity needs proper restructuring of code with certain Oops principles</li></ul>|[#8](https://github.com/sugarlabs/starchart/pull/8/commits)|
|**stick-hero-activity**|<br>Following changes have been made so far: <ul><li>  Port to latest Sugargame </li><li> Port to Python 3 </li><li>Fix the play button </li><li>Fix Issue [#20](https://github.com/sugarlabs/stick-hero-activity/issues/20) in order to maintain the legibility of the code. </li><li>`Blocker` Fix several Pygame related warning & errors </li></ul>|[#29](https://github.com/sugarlabs/stick-hero-activity/pull/29)|
|**deducto** & **colordeducto**|<br>Following changes have been made so far: <ul><li> Port to CollabWrapper</li><li>`Blocker` Delay is noticed in sharing of game state sometimes delay goes to 30-40 secs</li> </ul>|[#13](https://github.com/sugarlabs/deducto/pull/13) <br> [#16](https://github.com/sugarlabs/colordeducto/pull/16)|
|**showntell-activity**|<br>Following changes have been made so far: <ul><li> Review: Port to Gtk 3 </li><li> Port to Python 3 </li><li>Fix Several AttributeErrors </li><li>Replace path.py and use os.path instead</li><li>`Blocker` Several errors noticed while testing needs more fixes.</li></ul>|[#16](https://github.com/sugarlabs/showntell-activity/pull/16/commits)|
|**geotonky-activity**|<br>Following changes have been made so far: <ul><li> Port to Python 3</li><li> Port to latest Sugargame</li><li>`Blocker` Huge amount of Delay has seen. Sugargame is used differently from other sugar activities. </li></ul> |[#4](https://github.com/sugarlabs/geotonky-activity/pull/4/commits)|
|**infoslicer**|<br>Following changes have been made so far: <ul><li>  Port to Python 3</li><li>Port from sgmllib to html.parser</li><li>`Blcoker` Fix RuntimeError: generator raised StopIteration</li><li>`Blocker` Remove BeautifulSoup and use html.parser needs redesigning of code</li></ul> |[#34](https://github.com/sugarlabs/infoslicer/pull/34)|


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
