[![Gsoc](https://raw.githubusercontent.com/UtkarshSiddhpura/Google-Summer-of-Code/main/gsoc.png)](https://summerofcode.withgoogle.com/)
[![Sugarlabs](https://raw.githubusercontent.com/UtkarshSiddhpura/Google-Summer-of-Code/main/sugarlabs.png)](https://www.sugarlabs.org/)

## GSoC 2023: Sugarizer Word Puzzle and Chart Activity
*Name - Utkarsh Siddhpura*

*Email - utkarshsiddhpura09876@gmail.com*

*GitHub username - [UtkarshSiddhpura](https://github.com/UtkarshSiddhpura/)*

*Mentor - [ Lionel Laské ](https://github.com/llaske), [Nikhil Mehra](https://github.com/NikhilM98)*

## Introduction 🌟
In this report, I present the culmination of my work on the Sugarizer Word Puzzle and Chart Activities project for GSoC 2023. Alongside this project, my contributions to the Sugarizer community.

## Chart Activity 📊
The Chart activity offers various features, such as creating customized charts, collaborate with their peers, exporting charts, and using different chart types.

### Features Implemented ✨
- Add and remove data points from chart.
- Multiple chart views: line, pie, horizontal & vertical bar charts.
- Customizable chart appearance: colors, labels, and fonts.
- Export chart as image or CSV file.
- Share chart activity with others.
---
![Chart activity features gif](https://raw.githubusercontent.com/UtkarshSiddhpura/Google-Summer-of-Code/main/chart-activity.gif)
- Create chart by importing CSV file.
---
![gif for importing csv.gif](https://raw.githubusercontent.com/UtkarshSiddhpura/Google-Summer-of-Code/main/csv.gif)

### Pull Requests 🛠️
- [📊 Implement new Sugarizer Chart activity](https://github.com/llaske/sugarizer/pull/1357)
- [Add csv export for Stopwatch.activity](https://github.com/llaske/sugarizer/pull/1374)
- [Update .txt export to .csv in Measure.activity](https://github.com/llaske/sugarizer/pull/1372)

The **Chart activity** has been merged, and you can now play it online at [Sugarizer](https://dev.sugarizer.org/)


## Word Puzzle Template 🔡
The new Word Puzzle template in the Exerciser activity allows teachers to quickly create custom word puzzles on-the-fly during lessons using any media or text format, giving learners an interactive way to practice vocabulary.

### Features Implemented ✨
- Puzzle creation using a dedicated form
- Player UI for displaying puzzles and questions
- Support for various media types in questions
- Ability to share activity template with students
- Score display, including best score
---
![gif for word puzzle template](https://raw.githubusercontent.com/UtkarshSiddhpura/Google-Summer-of-Code/main/word-puzzle.gif)

### Pull Requests 🛠️
- [Exerciser new Word Puzzle Template 🔡](https://github.com/llaske/ExerciserReact/pull/182)

The **Word Puzzle template** has also been merged, and you can now try it inside Exerciser activity at [Sugarizer](https://dev.sugarizer.org/)

## Challenges Faced During Project 😅
- Making Sugar on a Stick work on my old Windows 7 w/ pentium machine (yes), which only supports 32-bit OS when using VirtualBox, VMware, etc. So i attempted [Trisquell-sugar supported by 32-bit..](https://archive.org/details/trisquel-sugar_9.0.1_i686) which should work inside VirtualBox, but that didn't work well because of some graphics rendering issues. As a result, I had to dual boot with a compatible version of Sugar for my machine, I found a version that worked on 64-bit Windows 7. I then installed sugar using [Install Sugar on a Stick with UNetbootin](https://wiki.sugarlabs.org/index.php?title=Sugar_on_a_Stick/Installation_Process&mobileaction=toggle_view_desktop) & then the chart activity on Sugar to identify project requirements for web-based Sugarizer chart activity.

- While working with the chart.js library, it compares the current configuration of a chart to the previous one to animate only updated chart values. This comparison process became a hurdle while implementing different chart types with consistency. When I update any object value in config, It fails to update that value on UI because it doesn't detect the change as I'm modifying the same object of config rather using a new object (So it can detect the object reference change ig). So i have to keep that in mind and use new object when it's required & also not to break the animation of that updated value.

- Coming up with a good word puzzle creation algorithm but fortunately, [Jamis Buck](https://weblog.jamisbuck.org/2015/9/26/generating-word-search-puzzles.html) had already devised a suitable algorithm for it.

- I can't run Docker/Toolbox (needed to build the Sugarizer APK). I won't explain the details, Also my BIOS doesn't have anything that matches `(?i)virtual`. So, I stick to using Gitpod whenever I have to use docker. Even some of my early contributions were done using [Gitpod](https://gitpod.io/).



## Beyond the Project 🚀
I completed the project earlier than anticipated due to my early start, and this gave me the opportunity to make some more contributions to Sugarizer.
- [Assisted in completing the pending Vue3 migration](https://github.com/llaske/sugarizer/pull/1381)
- [Chat activity v2.0 in Vue](https://github.com/llaske/sugarizer/pull/1399)
- [Enable Import/Read file from device File system on mobile devices](https://github.com/llaske/sugarizer/pull/1369)

more PRs:
- [Fix tutorial launch](https://github.com/llaske/sugarizer/pull/1389)
- [Remove unnecessary code from l10n.js](https://github.com/llaske/sugarizer/pull/1393)
- [remove subscribeLanguageChange from SugarL10n.js](https://github.com/llaske/sugarizer/pull/1396)


## Personal journey & Learning 🌈
My Google Summer of Code 2023 journey with Sugar Labs 🌟 has been an incredible adventure! 🚀 I've learned a lot about open-source and community collaboration 👥🌐. Coding challenges have been like puzzles that I've enjoyed solving 🧩, learning along the way. I'm super excited to keep contributing and keep the open-source love alive! 💙


## Acknowledgments 🙏
Huge shoutout to the incredible SugarLabs community and Sugarizer project! Massive thanks 🙌 to my mentor, Lionel Laské 🌟, for being a guiding light. Grateful to Google Summer of Code (GSoC) 🎓 for providing this incredible opportunity. Excited to keep contributing and learning 🚀.

