# Improve and Maintain 12 Sugar Activities

### Google Summer of Code'23

*Name - Riya Jain*

*Email - riya1jain567@gmail.com*

*GitHub username - [jriyyya](https://github.com/jriyyya)*

*Mentors -  [Ibiam Chihurumnaya](https://github.com/chimosky) , [Sourabha G](https://github.com/sourabhaa/)*

## My work in project

During the summer, I spent my time contributing to Sugar. My work involved refactoring, improving, adding new features and enhancing the UI in different activities. Project also involved some reviewing of PRs, fixing flake8 warnings and solving issues which were blocking new releases, and making new releases. I learnt a lot during this process about python, pygame, GTK +3, sugargame, sugar and it's working, etc.

## Work Track

|   Activity Name         |           Comments            |      Link to work          |      Status               |
|-------------------------|-------------------------------|----------------------------|---------------------------|
|make-them-fall-activity|<ul><li>Created Generic Game, Generator, fallItem, Guy classes</li> <li>Refactored code to employ D.R.Y principles and reduce CPU consumption </li> <li> Added feature - Difficulty Control Button </li> <li>Restructured code so that wherever hardcoded values were used, were replaced by functions</li> <li> Fixed Screen overlaping on canvas which was not visible </li> <li> Update Sugargame to support key presses </li> <li> Fix Flake8 Warnings </li></ul>|[Link to work](https://github.com/sugarlabs/make-them-fall-activity/pull/25) </br> [Link to work](https://github.com/sugarlabs/make-them-fall-activity/pull/30) </br> [Link to work](https://github.com/sugarlabs/make-them-fall-activity/pull/32) </br> [Link to Work](https://github.com/sugarlabs/make-them-fall-activity/pull/33) </br> [Link to work](https://github.com/sugarlabs/make-them-fall-activity/pull/34) | Merged <br/> Merged <br/> Merged <br/> Merged <br/> Merged|
|block-party-activity|<ul> <li> Add feature: Show Ghost piece to plan landing of piece</li> <li> Utilized Gdk.rgba to get ghost piece color</li> <li>Add bonus score for line break </li></ul> | [Link to work](https://github.com/sugarlabs/block-party-activity/pull/33) <br/> [Link to work](https://github.com/sugarlabs/block-party-activity/pull/34) </br> [Link to release](https://github.com/sugarlabs/block-party-activity/commit/26a58f14254d6ae38b7bfa3cb2fc63291eefcc97) | Merged <br/> Merged |
|classify-cats|<ul><li>Added a new game-mode -</br> Choose the cat from the options which has a odd/even count.</li> <li>In this gamemode the player sees 4 different kind of cats on screen and has 4 options to choose from. Only one cat will have a unique count of even or odd and player has to find that</li><li> Increase max_puzzle_count and Time between game </li> <li>Bug Fix in Score </li></ul>| [Link to Work](https://github.com/sugarlabs/classify-cats/pull/9) <br/> [Link to Work](https://github.com/sugarlabs/classify-cats/pull/7) </br> [Link to work](https://github.com/sugarlabs/classify-cats/pull/10) | Merged <br/> Merged <br/> Under Review |
|ball-and-brick-activity|<ul><li>Refactored code and added new classes ball, brick, bat for their functionality </li> <li>Created Ball class which handles movement, drawing and collisions. </li> <li> Made a new class called Bat which encapsulates the scroller functionality.</li></ul> | [Link to work](https://github.com/sugarlabs/ball-and-brick-activity/pull/20) | Under Review |
|hittheballs-activity|<ul><li>Added gameloop to the game - The game ended after choosing the correct option but now points are added to score when correct answer is chosen and game continues.</li><li>Added HighScore Feature</li></ul>| [Link to Work](https://github.com/sugarlabs/hittheballs-activity/pull/12) <br/> [Link to work](https://github.com/sugarlabs/hittheballs-activity/pull/13) <br/> [Link to Release](https://github.com/sugarlabs/hittheballs-activity/pull/14) | Merged <br/> Merged |
|Sonic-jump-activity| <ul><li>Enhanced the UI of the welcome screen by adding a animated jumping sonic making it visually appealing</li><li>Added a help screen, whose button is on welcome screen which show to play the game</li></ul>|[Link to work](https://github.com/sugarlabs/sonic-jump-activity/pull/10)| Merged |
|Stick-hero-activity| <ul><li>Fixed arrow keys not working on some pygame version </li><ul> | [Link to work](https://github.com/sugarlabs/stick-hero-activity/pull/39) </br> [Link to release](https://github.com/sugarlabs/stick-hero-activity/pull/40) | Merged </br> Merged |
| Falabracman-activity | <ul><li> Updated Readme to resolve [issue #6](https://github.com/sugarlabs/falabracman-activity/issues/6) </li> <li>Updated Sugargame to fix arrow keys not working on some pygame version.</li> </ul> | [Link to work](https://github.com/sugarlabs/falabracman-activity/pull/17) </br> [Link to work](https://github.com/sugarlabs/falabracman-activity/pull/18) </br> [Link to Release](https://github.com/sugarlabs/falabracman-activity/pull/19) | Merged </br> Merged |
| Countries-activity| <ul><li>Replaced alphabets to be drawn dynamically instead of using an image</li> <li>Fixed Screen overlaping with toolbar in some version of pygame </li> <li>Updated sugargame to support key presses which was not detected in some versions of pygame </li> </ul> | [Link to work](https://github.com/sugarlabs/countries-activity/pull/18) | Under Review |
| Across-and-down-activity | <ul><li>Replaced alphabets to be drawn dynamically instead of using an image</li> <li>Fixed Screen overlaping with toolbar in some version of pygame </li> <li>Updated sugargame to support key presses which was not detected in some versions of pygame </li> </ul> | [Link to work](https://github.com/sugarlabs/across-and-down-activity/pull/23) | Under Review |
| Flipsticks | <ul><li> Updated ReadMe to resolve [Issue #11](https://github.com/sugarlabs/flipsticks/issues/11) </li><ul> | [Link to work](https://github.com/sugarlabs/flipsticks/pull/15) | Under Review |
|Math-hurdler| <ul><li>Enhanced the UI of the gameplay</li> <li> Fixed Horse and hurdler sprite not getting on the correct position </li> <li> Added a generic class which acts as the button for the options to selct from </li> <li>Added Support of keyboard for option buttons</li> <li> Updated Sugargame to support key presses</ul> | [Link to Work](https://github.com/sugarlabs/math-hurdler/pull/14) | Under Review |


## Prior to GSoC Contribution 

|   Activity Name         |           Comments                         |      Link to work                  |      Status        |
|-------------------------|--------------------------------------------|------------------------------------|--------------------|
|make-them-fall-activity|<ul><li>Refactored code </li> <li> added new Button class </li> <li> reduced re-renders </li> </ul>|[Link to work](https://github.com/sugarlabs/make-them-fall-activity/pull/25)|Merged|
|classify-cats|<ul><li>Fixed highscore loading</li><li>Added showing current score after every game </li> <li> A bonus score for the reaction time</li><li>fixed the win check for placing cats</li></ul>|[Link to work](https://github.com/sugarlabs/classify-cats/pull/6)|Merged|
|block-party-activity|<ul><li>Feature: Show highscore</li></ul>|[Link to work](https://github.com/sugarlabs/block-party-activity/pull/28) <br/> [Link to work](https://github.com/sugarlabs/block-party-activity/pull/31) |Merged|
|tictactoe|<ul><li>Feature: Added text to show current turn</li></ul>|[Link to work](https://github.com/sugarlabs/tictactoe/pull/4)|Merged|
|sugar-toolkit-gtk3|<ul><li>Fixed issue: Deprecated module optparse is used</li></ul>|[Link to work](https://github.com/sugarlabs/sugar-toolkit-gtk3/pull/466)|Merged|
|stick-hero-activity |<ul><li>Bug Fix: Initially Fruit score showed highscore</li><li>Bug Fix: Bug in perfect score </li></ul>|[Link to work](https://github.com/sugarlabs/stick-hero-activity/pull/34) <br/> [Link to work](https://github.com/sugarlabs/stick-hero-activity/pull/36) <br/> [Link to work](https://github.com/sugarlabs/stick-hero-activity/pull/35)|Merged|
|activity-abacus|<ul><li>Bug Fix: Top left bead overflows on reset</li></ul>|[Link to work](https://github.com/sugarlabs/activity-abacus/pull/29)|Merged|
|flipsticks|<ul><li>Fix Flake8 Warnings</li><li>Changed Division operator to Floor division</li></ul>|[Link to work](https://github.com/sugarlabs/flipsticks/pull/12) <br /> [Link to work](https://github.com/sugarlabs/flipsticks/pull/14)|Merged|
|falabracman-activity|<ul><li>Fixed Flake8 warnings</li></ul>|[Link to work](https://github.com/sugarlabs/falabracman-activity/pull/15) <br/> [Link to work](https://github.com/sugarlabs/falabracman-activity/pull/16) <br/> [Link to work](https://github.com/sugarlabs/falabracman-activity/pull/14) | Merged |
|Distance-activity|<ul><li> Fixed Flake8 warnings </li> </ul> | [Link to work](https://github.com/sugarlabs/distance-activity/pull/9) |Merged|
|Cookie-search-activity|<ul><li>Fixed Flake8 warnings</li><ul>|[Link to work](https://github.com/sugarlabs/cookie-search-activity/pull/22) <br/> [Link to work](https://github.com/sugarlabs/cookie-search-activity/pull/24) | Merged |


## Personal Note
With GSoC'23 coming to an end, I'd like to thank my mentors Ibiam Chihurumnaya and Sourabha G for guiding me all along. I really enjoyed working on these activities and I will be continuing my contribution to Sugar Labs. 🚀
