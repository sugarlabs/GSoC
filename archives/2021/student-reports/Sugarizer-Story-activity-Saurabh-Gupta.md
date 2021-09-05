<h1 align="center">Sugarizer Story Activity</h1>

<div align="center">
  <span>Google Summer of Code, 2021 Final Report</span>
  <br>

</div>

<div align="center">
  
![m_merged (1)](https://user-images.githubusercontent.com/60233336/131387906-3c92c480-af96-440d-a040-6388a1760893.png)
  
</div>

### Student
[Saurabh Gupta](https://github.com/saurabhhere)
 
### Mentors
[Ashish Aggarwal](https://github.com/ashish0910) and  [Lionel Laské](https://github.com/llaske)

### About the project
My project involves creating a Story Activity for Sugarizer which can run on all the platforms. </br>

### Story Activity

Story activity allows users to create a story based on random images retrieved from the existing Abecedarium database. They can write their story using WYSIWYG editor, record and play their narration of the story, store the story inside journal for later use, export it in various format and has shared mode to write the story with other users.


### Features Implemented:
1. **Toggle Mode:** We can toggle between single-mode and grid-mode. In single-mode, we can write a part of the story for each individual image and in grid-mode, we can write the whole story altogether.

2. **Grid Size:** We can update the number of images using the Grid Size Palette. We can switch between 3 (3x1), 6 (3x2), 9(3x3) images.

3. **Foreground Color and Background Color:** We can change the color of the font for our story accordingly.

4. **Format text:** We can format our text with Bold, Italic, and Underline.

5. **Choose Font:** We can update the font from the given 8 categories which include Arial, Comic Sans MS, Times New Roman, Georgia, Lucida Console, Impact, Courier New, Verdana.

6. **Font Size:** We can increase or decrease the font size inside the story activity accordingly.

7. **Export Story:** We can export our written story in TXT, PDF, ODT, and DOC formats along with the images, in both single and grid mode.

8. **Record:** We can record the narration of our story using the record button.

9. **Play:** We can play our recording inside the story using the play button. It will be activated only after you record something for that image.

10. **Export as Sound:** We can also export our recordings to the journal and store them.

11. **Speak:** Text-to-speech using speak button. The button will get activated only if we have something in our editor to speak.

12. **Shared mode:** Allows the user to write stories with other users on the same server.<br/>Changes made by any user inside the editor will be reflected in all editors so that they can create a story together. After writing a story user can export it in different formats. If the host leaves anytime in-between, a new user will be assigned as host and will be notified to everyone using a popup.

13. Activity is **localized**, **responsive**, and **has a tutorial** that can be viewed using the Help Button.

14. The activity supports most browsers including Chrome, Firefox, and Safari, and most platforms like Windows, Linux, macOS, Android, iOS.

15. **Stop button** will store all the data of the activity including images and the story inside the journal, which can be retrieved later.

16. Activity can be used without the internet also.

### Demo:

![story-activity](https://user-images.githubusercontent.com/60233336/131387806-7849f669-608a-4887-9220-ce3c659ace07.gif)

### Status:
Story activity is in its final stage of testing and will be merged soon to the `dev` branch. It will then be included in the subsequent release.

#### ***PR Link:***  [ https://github.com/llaske/sugarizer/pull/960](https://github.com/llaske/sugarizer/pull/960)

### My experience
Overall, GSoC’21 has been a thrilling journey for me. I went from making minor changes in Sugarizer to creating a whole new activity for Sugarizer during my complete journey. I learned to write high-quality code that fulfills all the project’s goals. I tried various new libraries and learned a lot by using them. It’s been an amazing experience to write code that will be used by thousands of people around the world.
<br/>

I would like to thank my mentors and the whole Sugar Labs community for being extremely helpful and supportive throughout this journey.
