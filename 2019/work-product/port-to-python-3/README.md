**Work Review**<br>

**Port to TelapathyGLib**<br>
 Contributed in porting Sugar, Sugar Toolkit, and CollabWrapper.<br>

Work experience:

 The biggest challenge that I faced was inexperience in working with Telepathy. I started by the reviewing previous work done
 in GSoC'18. I also went through various telepathy documentations and through the sources of Python 2 Telepathy and TelepathyGLib to
 better understand the functionality of both the APIs. I also went through the sources of GNOME and Polari shells using TelepathyGLib.
 Another major challenge was to figure out how to replace the `Channel`, `Connection` and `InterfaceFactory` classes used directly from
 the Python 2 sources. After a long discussion this issue was solved with a conclusion to directly use D-Bus calls
 considering that Telepathy is fully specified via D-Bus.

 Other small debugging challenges were fixing use of wrong constants of TelepathyGLib. It took me around a week to figure out
 what was broken which involved use of `dbus-monitor` as well, finally resulting in a single line change to a wrong constant value.

 I also used `gdb` to analyze crash files generated, but finally finding out that it is caused due to a bug in Telepathy itself.

Link to commits:<br>
 - Sugar : https://github.com/sugarlabs/sugar/commit/f8f506b0f76362b1048316d9b2a9fe6ca3936fbe<br>
 - Sugar Toolkit : https://github.com/sugarlabs/sugar-toolkit-gtk3/commit/88ea8e1f4febee5f8371337f07116e22c9d54cb6<br>
 - CollabWrapper : https://github.com/sugarlabs/collabwrapper/commit/a6f9cc2dc4435841cdf3dc6d96635553d12ac2c4<br>

 Other related commits:<br>
 - https://github.com/sugarlabs/chat/commit/f65de2b8b3f4c1ddd020d63ec7742cc9c02aa0be<br>
 - https://github.com/sugarlabs/collabedit/commit/7ec78421d28de5ecec4aff46b1d9826c6efb4a80<br>
 - https://github.com/sugarlabs/browse-activity/commit/70908bc83fbacfc76c08b8a7793a5d45e3e7912c<br>
 - https://github.com/sugarlabs/Pippy/commit/3a1dfc0ee7c75e836aa061d9da4bcc7583daccc1<br>
 - https://github.com/sugarlabs/imageviewer-activity/commit/d5da3d37758118c61be1fd72108cf2864737635a<br>
 - https://github.com/sugarlabs/readetexts/commit/9cb9c29bba5ab16e25242bf741f9cd2a940e25db<br>
 - https://github.com/sugarlabs/sugar-docs/commit/a110abb7a8ad838084e5367f838bcc51d300afd3<br>

**Testing Gwebsockets**<br>
 Testing Python 3 port of gwebsockets.<br>

Work experience:

I already had a ported version of gwebsockets from GSoC'18 work. I begin my testing noticing that the tests fails for the Python 3 version.
I started debugging by going through the source code and using logging to compare between Python 2 and Python 3 versions. I also used `wireshark`
and `tcpdump` to analyse and compare the packets from both the versions.  The work is unfinished.

Link to issue:<br>
 - https://github.com/sugarlabs/gwebsockets/issues/5<br>

**Port Sugar Toolkit to Six**<br>
   Made some fixes in Toolkit based on Six and tested.

Work experience:

I started by completing remaining tasks in the `Port to Six` task check-list of the toolkit like regenerating documentation, looking for code
calling C code, reviewed port of graphic examples again, etc. While working on port of Sugar I found out that the Six port of
the Toolkit requires some more changes and hence made those changes. I figured out the changes with simple work-around and
analysing the functional calls.

Link to issues/commits:<br>
 - https://github.com/sugarlabs/sugar-toolkit-gtk3/commit/ed46c219a9222664b6ef371d1dd6e8956d61e620<br>
 - https://github.com/sugarlabs/sugar-toolkit-gtk3/commit/490a602367debdddeebfce8e20eb5ee2301237f1<br>
 - https://github.com/sugarlabs/sugar-toolkit-gtk3/commit/e4725ad1967cfd82c6b9dd99d03dfb76be27173c<br>
 - https://github.com/sugarlabs/sugar-toolkit-gtk3/commit/5043d53e7bd28d44b0f5966a7692a7a19b6362ac<br>
 - https://github.com/sugarlabs/sugar-toolkit-gtk3/issues/382<br>

**Port Sugar to Python 3**<br>
   Completed Python 3 port of Sugar, with the new port still needing some fixes.<br>

Work experience:

Worked on the pull request opened in GSoC'18, initially it had a lot of issues like Journal was not working, Neighbourhood and
Group views were not accessible. Solved these issues with simple work around and some fixes in the toolkit. Though there still remains some
issues in Sugar that are needed to be fixed.

Link to commit:<br>
 - https://github.com/sugarlabs/sugar/commit/aa18879e9717dfe2d30f249549e9a43d6dd6da4f<br>

Link to issues:<br>
 - https://github.com/sugarlabs/sugar/issues/860
 - https://github.com/sugarlabs/sugar/issues/861
 - https://github.com/sugarlabs/sugar/issues/862
 - https://github.com/sugarlabs/sugar/issues/863
 - https://github.com/sugarlabs/sugar/issues/864
 - https://github.com/sugarlabs/sugar/issues/865

**Port Sugar Datastore to Python 3**<br>
   Completed Python 3 port of Sugar Datastore.<br>

Work experience:

Started testing the Python 3 port by comparing the output of the `dbus-monitor`. Made a small fix and completely tested the functionality of
the ported version. I also worked on making distribution packages so that others could test.

Link to commit:<br>
 - https://github.com/sugarlabs/sugar-datastore/commit/43aabbc5e1febb40ce053cee74fca06b23d0b601<br>

**Port Sugar activities to Python 3**<br>
   Ported Sugar activities to Python 3.<br>

Link to commits:<br>
 - https://github.com/sugarlabs/sin-dientes-activity/commit/0b8e17d5ec77f74723c2491654804662594fc2c9<br>
 - https://github.com/sugarlabs/nutrition/commit/62bfb7ae018fc26858793673a74602dfd4ed10a8<br>
 - https://github.com/sugarlabs/collabwrapper/commit/139511702deee7bc443a5a6428e0ab19aaa6cdbe<br>
 - https://github.com/sugarlabs/browse-activity/commit/51af1f5e3e95b40458776003241daf521474550f<br>
 - https://github.com/sugarlabs/cedit-activity/commit/20731fcdc36e2ec66c4f12a0607e9a5e1530bd24<br>
 - https://github.com/sugarlabs/clock-activity/commit/66a0f267a2082d60ed12997080761800ceacdc45<br>
 - https://github.com/sugarlabs/collabedit/commit/035ae724f171904266cf6a1d26c9281d9ec32e97<br>
 - https://github.com/sugarlabs/across-and-down-activity/commit/b2a3d1e773bff938bad1aa812baed9c0d80534b2<br>
 - https://github.com/sugarlabs/Lemonade/commit/1f84863d35ca32b2ed418fe6dc4b1deccad642ef<br>

**Other miscellaneous fixes**<br>
 - https://github.com/sugarlabs/followme/commit/24cc352868dcd9c142e38dafc7cc98e02ef73960<br>
 - https://github.com/sugarlabs/jukebox-activity/commit/0079cded59fa0bf407a5de98177d32445126017d<br>
 - https://github.com/sugarlabs/collabedit/commit/6430a6b4d39444af121b9c0d22613ab55d62cce2<br>
 - https://github.com/sugarlabs/collabedit/commit/6480d5cef335b48eb07d38c224e7dc017091dc73<br>
 - https://github.com/sugarlabs/cedit-activity/commit/9b35c6a637836797c9aa7c556b244815d908a7cc<br>
 - https://github.com/sugarlabs/browse-activity/commit/540c93fa5fe4ca1a741c6460abed2607aa8a8078<br>
 - https://github.com/sugarlabs/sugar-toolkit-gtk3/commit/3b28597486951c225239c220def190377ee1739f<br>
 - https://github.com/sugarlabs/convert/commit/8e83b6c5cb4398d2167449c877e06e2170c031c1<br>
 - https://github.com/sugarlabs/gwebsockets/commit/49e37fe30d5e12efce8680278195bea335fc533b<br>
 - https://github.com/sugarlabs/readetexts/commit/03fb012f77752eaf9b48d77f43c7892f03194b72<br>
 - https://github.com/sugarlabs/sugar-toolkit-gtk3/commit/ac7482081e265008d7a76f164fcc72e38099ef83<br>
 - https://github.com/sugarlabs/sin-dientes-activity/commit/5425d2f31a2b678c17e2c61d652af656bfc9fd67<br>
 - https://github.com/sugarlabs/sugar/commit/325876f3ae671ad547b796affb5fbbec215523bd<br>
 - https://github.com/sugarlabs/nutrition/commit/896f48114fda18bb180064b514f887392680fcc0<br>
 - https://github.com/sugarlabs/nutrition/commit/180e6a443289450b2ebcf0fe0159947ff4ec9900<br>
 - https://github.com/sugarlabs/nutrition/commit/ef2a89425d21f427df455248a0b370d39bc0d6a6<br>
 - https://github.com/sugarlabs/nutrition/commit/c7f0471841e18a4c73925e7a0b6b203f26f968c8<br>

**Open pull requests**<br>
 - https://github.com/sugarlabs/maze-activity/pull/29<br>
 - https://github.com/sugarlabs/infoslicer/pull/28<br>
 - https://github.com/sugarlabs/Pippy/pull/63<br>

**Work remaining to be done**<br>

 - Make activity chooser window modal.
 - Build multi-version distribution packages for Sugar Toolkit.
 - Some fixes in Sugar after Python 3 port.
