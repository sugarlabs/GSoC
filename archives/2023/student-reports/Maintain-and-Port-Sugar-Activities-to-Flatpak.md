Maintain and Port Sugar Activities to Flatpak
-----

***Google Summer of Code, 2023***

*Name - Sparsh Goenka*

*Email - sparshgoenka@gmail.com*

*GitHub username - [sparshg](https://github.com/sparshg/)*

*Mentor - [Martin Abente Lahaye](https://github.com/tchx84), [Ibiam Chihurumnaya](https://github.com/chimosky/)*

Reaching mid-evaluation for my project, I have learned a lot and helped to update the sugar activities to Flatpak.
Here is a list of changes I have made till now:

| **Flatpak Package** | **Pull Requests**                                                                                            | **Status** | **Comments**                                                                                                            |
|:-------------------:|--------------------------------------------------------------------------------------------------------------|:----------:|-------------------------------------------------------------------------------------------------------------------------|
|        Pippy        | Upstream:<br> [Fix pygame full screen issue in some examples](https://github.com/sugarlabs/Pippy/pull/86)    |   Merged   | Issue noticed after updating flatpak to pygame 2                                                                        |
|                     | Upstream:<br> [v76](https://github.com/sugarlabs/Pippy/pull/88)                                              |    Open    |                                                                                                                         |
|                     | Shared Modules Upstream:<br> [Add pygame 2](https://github.com/flathub/shared-modules/pull/247)              |    Open    | Doesn't seem like this will merge soon, maintainers suggest including it in BaseApp if build times are relatively small |
|                     | [Update Pippy](https://github.com/flathub/org.sugarlabs.Pippy/pull/6)                                        |    Open    | Waiting for new release of Pippy to include fix from upstream, else good to go                                          |
|       BaseApp       | [Downgrade TelepathyGLib](https://github.com/flathub/org.sugarlabs.BaseApp/pull/8)                           |   Merged   |                                                                                                                         |
|       Finance       | [Update BaseApp and add data checker](https://github.com/flathub/org.sugarlabs.Finance/pull/4)               |   Merged   |                                                                                                                         |
|        Words        | [Update activity and BaseApp](https://github.com/flathub/org.sugarlabs.Words/pull/5)                         |   Merged   | Included WebKit2 patch to update                                                                                        |
|                     | [Add data-checker to gst-plugins-espeak](https://github.com/flathub/org.sugarlabs.Words/pull/7)              |    Open    |                                                                                                                         |
|         Maze        | [Update activity and BaseApp](https://github.com/flathub/org.sugarlabs.Maze/pull/6)                          |   Merged   |                                                                                                                         |
|        Abacus       | [Update activity and BaseApp to 23.06](https://github.com/flathub/org.sugarlabs.AbacusActivity/pull/9)       |   Merged   |                                                                                                                         |
|     Turtle Pond     | [Update activity and BaseApp](https://github.com/flathub/org.sugarlabs.TurtlePondActivity/pull/5)            |   Merged   |                                                                                                                         |
|     Slide Ruler     | [Update BaseApp and add data-checker to activity](https://github.com/flathub/org.sugarlabs.Sliderule/pull/4) |   Merged   |                                                                                                                         |
|    Music Keyboard   | [Update](https://github.com/flathub/org.sugarlabs.MusicKeyboard/pull/7)                                      |   Merged   | Added environment variables while building csound to include ctcsound.py. Removed ctcsound from sources                 |
|        Story        | [Update](https://github.com/flathub/org.sugarlabs.StoryActivity/pull/5)                                      |    Open    |                                                                                                                         |
|      ReadETexts     | [Update](https://github.com/flathub/org.sugarlabs.ReadETexts/pull/5)                                         |    Open    |                                                                                                                         |
|        Chart        | [Update to BaseApp 23.06 and add data checker](https://github.com/flathub/org.sugarlabs.Chart/pull/4)        |    Open    | Issue in upstream with icon not being square                                                                            |
|      TicTacToe      | Upstream:<br> [Fix stop button not working](https://github.com/sugarlabs/tictactoe/pull/6)                   |   Merged   | There was an issue with Flatpak package not closing when stop button is clicked                                         |
|                     | Upstream:<br> [Fix X and O are disappearing randomly](https://github.com/sugarlabs/tictactoe/pull/9)         |   Merged   | There was this glitch when pygame canvas had a height with odd number of pixels                                         |
|                     | Upstream:<br> [Add screenshots](https://github.com/sugarlabs/tictactoe/pull/10)                              |    Open    | Warning due to the existing help image being too wide when used as Flatpak "screenshot" in activity.info                |

Thanks to my mentors for their guidance and many useful tips, I have been enjoying working with them! I will try porting more new packages to Flatpak in the coming month too.
