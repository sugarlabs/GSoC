# Google Summer of Code'23

### Improve and maintain 12 Sugar activities

**Name**: Dimitrios Mylonas

**GitHub**: [Dimi20cen](https://github.com/Dimi20cen)

**Email**: dimitris20cen@gmail.com

**Mentors**:  [chimosky](https://github.com/chimosky), [sourabhaa](https://github.com/sourabhaa/)

## The experience
I found the experience incredibly rewarding and am excited to continue contributing to the open-source community. While there were moments of feeling lost and periods of feeling overwhelmed, I have no regrets about participating in this journey. 

I extend my gratitude to my mentors, to the SugarLabs organization, and to Google Summer of Code for providing me with this invaluable opportunity and for their support throughout this event. Special thanks also go to my co-contributor, Riya Jain. Thank you all! ❤️

## Contributions

### [Flappy](https://github.com/sugarlabs/flappy)
- Merged the activity with [flappy-birds](https://github.com/sugarlabs/flappy-birds-activity) and improved it even further. [Merged](https://github.com/sugarlabs/flappy/pull/18)
  - Added up-arrow key functionality for bird movement.
  - Refined bird rotation for smoother gameplay.
  - Implemented a moving background for enhanced visuals.
  - Incorporated flapping wings animation.
  - Adjusted the starting point of bottom pipes for better visuals.
  - Enhanced collision detection, using masks, for increased precision.
  - Introduced a sound effect upon collision, with the bird falling to the ground.
  - Tweaked the points sound effect timing for improved feedback.
  - Updated the game font and add an outline, to resemble the original Flappy Bird.
  - Updated the sugargame wrapper to fix issue with key events.
  - Replaced flappy's icon with flappy-bird's icon.
- Released new version. [Under Review](https://github.com/sugarlabs/flappy/pull/24)


### [2Cars](https://github.com/sugarlabs/2-cars-activity)
- Completed port to Python 3. [Merged](https://github.com/sugarlabs/2-cars-activity/pull/14)
- Fixed flake8. [Under Review](https://github.com/sugarlabs/2-cars-activity/pull/16)
- Refactored the activity. [Under Review](https://github.com/sugarlabs/2-cars-activity/pull/15)
- Made game window adjust to screen's size.[Under Review](https://github.com/sugarlabs/2-cars-activity/pull/11)
- Added pause functionality. [Under Review](https://github.com/sugarlabs/2-cars-activity/pull/11)
- Added home button. [Under Review](https://github.com/sugarlabs/2-cars-activity/pull/11)

### [Ball and Brick](https://github.com/sugarlabs/ball-and-brick-activity)
- Attempted to fix black canvas when running the activity. [Under Review](https://github.com/sugarlabs/ball-and-brick-activity/pull/22)

### [TurtleArt](https://github.com/sugarlabs/turtleart-activity)
- Fixed issue with the position of the help popup message. [Under Review](https://github.com/sugarlabs/turtleart-activity/pull/92)
- Fixed Gtk-CRITICAL warning. [Under Review](https://github.com/sugarlabs/turtleart-activity/pull/91)

### [Browse](https://github.com/sugarlabs/browse-activity)
- Improved the UI of the homepage. [Merged](https://github.com/sugarlabs/browse-activity/pull/124)
- Configured the functionality for middle-clicking. [Under Review](https://github.com/sugarlabs/browse-activity/pull/124)
- Fixed opening of pdf files. [Merged](https://github.com/sugarlabs/browse-activity/pull/128)

### [Math Hurdler](https://github.com/sugarlabs/math-hurdler)
- Fixed unregistered key events. [Merged](https://github.com/jriyyya/math-hurdler/pull/1)

### [Solar System](https://github.com/sugarlabs/solar-system)
- Improved UI. [Under Review](https://github.com/sugarlabs/solar-system/pull/4)
- Added short fun stories to capture the children's interest and imagination. [Under Review](https://github.com/sugarlabs/solar-system/pull/4)

### [JukeBox](https://github.com/sugarlabs/jukebox-activity)
- Fixed Gtk-CRITICAL warning. [Merged](https://github.com/sugarlabs/jukebox-activity/pull/33)

### [TextQuest](https://github.com/sugarlabs/textquest)/[TextDungeon](https://github.com/sugarlabs/textdungeon)
Started with the intention of improving the TextDungeon activity by fixing bugs, improving the UI and adding new stories. The changes were substantial however and the decision to release the improved version as a new activity was made, therefore the TextQuest activity was introduced to SugarLabs.

### [Lemonade](https://github.com/sugarlabs/Lemonade)
While the Lemonade activity was ported to Python 3 in the past, the port wasn't complete and a lot of bugs was caused from regressions.
- Fixed errors that prevented the help console from opening. [Merged](https://github.com/sugarlabs/Lemonade/pull/20)
- Fixed issue with calculation of buying amount. [Merged](https://github.com/sugarlabs/Lemonade/pull/22)
- Fixed errors that crashed the activity when the Debug Terminal was activated. [Under Review](https://github.com/sugarlabs/Lemonade/pull/14)
- Fixed error that crashed the activity when the key events were numbers. [Under Review](https://github.com/sugarlabs/Lemonade/pull/15)
- Fixed issue with displaying the wrong bought amount. [Under Review](https://github.com/sugarlabs/Lemonade/pull/16)
- Fixed issue with displaying big gap between a string in the buying screen. [Under Review](https://github.com/sugarlabs/Lemonade/pull/17)
- Made the game window adjust to the screen's size. [Under Review](https://github.com/sugarlabs/Lemonade/pull/18)
- Added in-game help screen with basic instructions. [Under Review](https://github.com/sugarlabs/Lemonade/pull/19)
- Port activity to sugargame wrapper (not completed). [Draft](https://github.com/sugarlabs/Lemonade/pull/21)


### [Chat](https://github.com/sugarlabs/chat)
- Moved the sender's name above the message box. [Was not used](https://github.com/sugarlabs/chat/pull/34)
- Added the functionality of multi-line text input and drawing input (not completed). [Draft](https://github.com/sugarlabs/chat/pull/35)

### [Cell Game](https://github.com/sugarlabs/cellgame)
- Fixed flake8. [Merged](https://github.com/sugarlabs/cellgame/pull/12)
- Made the game window adjust to the screen's size. [Merged](https://github.com/sugarlabs/cellgame/pull/12)
- Increased the duration that the string in the menu was visible when flashing. [Merged](https://github.com/sugarlabs/cellgame/pull/10)
- Added exit button in help page. [Merged](https://github.com/sugarlabs/cellgame/pull/10)
- Added mouse functionality. [Merged](https://github.com/sugarlabs/cellgame/pull/10)
- Released new version. [Under Review](https://github.com/sugarlabs/cellgame/pull/14)

### [Calculate](https://github.com/sugarlabs/calculate-activity)
- Fixed multiple Gtk-CRITICAL warnings. [Merged](https://github.com/sugarlabs/calculate-activity/pull/75)
- Migrate activity from using Gtk.VBox and Gtk.HBox to using Gtk.Box. [Merged](https://github.com/sugarlabs/calculate-activity/pull/73)
- Fixed issue where the layout of the calculator would not fill the screen. [Under Review](https://github.com/sugarlabs/calculate-activity/issues/43)
