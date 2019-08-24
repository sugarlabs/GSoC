# Sugar Dashboard Project
This project consisted of working on creating a Dashboard Activity, then integrating it to Sugar (Journal) and working on the variable appearance of the Buddy Icon. 

**Dashboard Activity:**
The development of the Dashboard activity was pretty straightforward but with some issues. One of the issues were scaling issues on devices with different resolutions like the XO laptop. Another issue was creating the heatmap, a feature which shows your activity along the year, something like the GitHub users' profile heatmap. Another issue was with the pie chart, there are still issues with it so I had to add a feature with which you can view the pie chart and how many times an activity was used. 

I am linking some of the commits which were important, can't link all of them because there are over 50 commits:

https://github.com/sugarlabs/Dashboard.activity/commit/0e1a3e2d62e2fa38cd8f3e8364237855a0686c0f
https://github.com/sugarlabs/Dashboard.activity/commit/fae1a70afa732f8e4322c8f1d35b3bbaa644d3cf
https://github.com/sugarlabs/Dashboard.activity/commit/33381f3df1b87ae48bc4d0795df8062dc4db85ac
https://github.com/sugarlabs/Dashboard.activity/commit/a05606b87ecb03aedbea87099ca9388cb100845d
https://github.com/sugarlabs/Dashboard.activity/commit/dea0322d6257e5593e0cad3cf703c61edd887546
https://github.com/sugarlabs/Dashboard.activity/commit/609ccf4cb3da67123dbb6c82b44764c18bb6444d
https://github.com/sugarlabs/Dashboard.activity/commit/27205dbe0036c54b66ebf21ccd0f1f48cb4e2756
https://github.com/sugarlabs/Dashboard.activity/commit/1e9e953e150bf9e8a4b9626dc19d035728450a4c
https://github.com/sugarlabs/Dashboard.activity/commit/ea72ba358df740380557f2f8ae8d1d87a7b46884
https://github.com/sugarlabs/Dashboard.activity/commit/4ac8c77183666b9a7b4a6283e8d6b19873e0af76
https://github.com/sugarlabs/Dashboard.activity/commit/82010cdb61b2a92ced06337e35e76307a53fd6aa
https://github.com/sugarlabs/Dashboard.activity/commit/c4fd7f91d01627920b6f482b3674ec2b986b9807
https://github.com/sugarlabs/Dashboard.activity/commit/c9b8e1cceda086f6358c68a1d457a4738fb79a94
https://github.com/sugarlabs/Dashboard.activity/commit/2dd79237ab46fe4b9b1f2f00e907b5a8766a253a

Other commits can be found here: [https://github.com/Hrishi1999/Dashboard.activity/commits/master](https://github.com/Hrishi1999/Dashboard.activity/commits/master)

**Dashboard Integration:**
In this part of the project I had to integrate the Dashboard with Sugar i.e. making it a core part and not run it as a Sugar activity. There were no major blockers on doing this since most of the code was used from Dashboard Activity created earlier. The Dashboard activity class extended from `sugar3.activity.Activity`, which had to replaced with a `Gtk,ScrolledWindow`. Then I had to remove to the toolbar code since I had to use a simpler `ToolBar` which was defined in `/jarabe/journal/journaltoolbox`.  The `sugarpycha` library which Dashboard activity used was added to `/jarabe/utils/` . 

Links to important commits:
https://github.com/Hrishi1999/sugar/commit/8875669866b055fa3d873c8ddf5c0699f38a5d3f
https://github.com/Hrishi1999/sugar/commit/513f14773e75420f58ff329f5f11aae78e133ce6
https://github.com/Hrishi1999/sugar/commit/ff299a3ba751ea24ad074722656bce031c83be39
https://github.com/Hrishi1999/sugar/commit/d8df9ff793d8c5d9060b9f61c7ef4623f98e49c2
https://github.com/Hrishi1999/sugar/commit/ce9b5b41b0e81d12521737f6bbf3d059e9bc14d3
https://github.com/Hrishi1999/sugar/commit/09b486f6440013a0903ba596aac4fed1c1d7bfcc
https://github.com/Hrishi1999/sugar/commit/091aed67cb9a995f89a4630785e79d24bf77c566

Link to pull request for this feature: https://github.com/sugarlabs/sugar/pull/851
(If the pull request closes without a merge, I will make sure that this PR will be referenced to the new PR)

**Variable Appearance of Buddy Icon:**
This feature included to replace the static icon at the center of Sugar Desktop. It should change based on dimensions like number of journal entries, battery status and disk usage. There were no major blockers in implementing this. One of the issue was that the number of icons used for this feature will grow exponentially with each added dimension, so I decreased one dimension of three by using badges for battery status. I will be coming up with a better alternative by using Cairo as suggested my mentors.

Links to commits:
https://github.com/Hrishi1999/sugar/commit/5a1666538b15856493c1cc8b91ba8c9525762db9
https://github.com/Hrishi1999/sugar/commit/8ddec3efd9d5fc3c877914066d1691687da52d4c
https://github.com/Hrishi1999/sugar/commit/0b52d8342d7cf1f6e01857555d5ec680f1d3f75f
https://github.com/Hrishi1999/sugar/commit/430adb41c7cb39ebc8d68095dd6e77b3ae1418ea
https://github.com/Hrishi1999/sugar/commit/4036c425e6ab88c5c91638a543af354747118cc1
https://github.com/Hrishi1999/sugar/commit/8ff8f8f652e06ab341648c733e5e67a7e7f023f4
https://github.com/Hrishi1999/sugar/commit/740eea4621a676643c36b01471ea05e371aa454c
https://github.com/Hrishi1999/sugar/commit/ab6af7dbf9170533c3835fc807f2c53225aeb5fc

Link to the open PR: https://github.com/sugarlabs/sugar/pull/852
(If the pull request closes without a merge, I will make sure that this PR will be referenced to the new PR)

**Work remaining to be done:**
1) Fix remaining issues for Dashboard activity https://github.com/Hrishi1999/Dashboard.activity/issues/
2) Fix remaining issues with variable appearance of buddyicon listed here: https://github.com/sugarlabs/sugar/pull/852. 
Also use Cairo in future instead of using too many icons.
3) Get Sugar integration reviewed https://github.com/sugarlabs/sugar/pull/851 and fix any upcoming issues.
4) Get the open pull requests merged. 