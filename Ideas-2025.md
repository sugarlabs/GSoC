# GSoC 2025 Ideas

## Project Ideas
* [Interactive AI-powered Chatbot and Debugger for Music Blocks](#Interactive-AI-powered-Chatbot-and-Debugger-for-Music-Blocks)

[Administrative notes](#administrative-notes)

------------

## Color sensor for Music Blocks for photos and real-time video

**Prerequisites**<br>
 - Experience with JavaScript
 - Experience with Music Blocks

**Description**<br>
Music Blocks has a feature to detect the color of pixels generated from drawing within the program, but it cannot detect the color of pixels from images that are either uploaded or from a webcam. By adding a feature to detect color from both uploaded images and a live webcam stream, users would be able to implement *Lego music notation for the blind* and similarly interactive programs.

The goal of the project is to develop extended functionality to our exisiting tools of turtle/mouse glyph movement and limited color detection to sense color from uploaded images, as well as the real-time feed from a webcam. Upon successful implementation, the turtle/mouse glyph will be able to detect the color of pixels underneath it, regarless of whether those pixels were drawn by the turtle/mouse itself, part of an uploaded image stamped to the canvas, or part of a live webcam video feed into Music Blocks. One test of success is to run our *Lego music notation for the blind* project with a live feed. The result should be able to playback and record the abstract brick notation based on its contrasting colors.

**Project Length**<br>

**175** hours

**Difficulty**<br>

**Medium**<br>

**Coding Mentors**<br>
[Walter Bender](https://github.com/walterbender/)<br>
**Assisting Mentors**<br>
[Devin Ulibarri](https://github.com/pikurasa/)

------------

## Interactive Chatbot and Debugger for Music Blocks

**Prerequisites**<br>
 - Experience with Python
 - Experience with Music Blocks
 - Experience with LLMs/Chatbots
 - Experience with AWS
 - Experience with FastAPI

**Description**<br>
The idea is to enhance Music Blocks with an AI-powered chatbot and project debugger. This feature aims to bridge the gap between users' creative ideas and their ability to troubleshoot or fully utilize the platform's features. The AI chatbot would provide real-time assistance by answering questions, explaining features, and offering creative suggestions, while the project debugger would help users quickly identify and resolve issues in their projects or block connections. This enhancement would make the platform more accessible for beginners while streamlining the debugging and experimentation process for advanced users.

Specifically, we aim to achieve the following:

- Train an open-source LLM to understand Music Blocks projects and develop the ability to debug them effectively.
- Implement robust Retrieval-Augmented Generation (RAG) for the LLM model to enhance contextual understanding.
- Integrate the AI chatbot and debugger into the Music Blocks platform.
- Develop FastAPI endpoints to deploy the model efficiently.
- Work on techniques to minimize hallucinations and improve accuracy.

**Project Length**<br>

**350** hours

**Difficulty**<br>

**Hard**<br>

**Coding Mentors**<br>
[Walter Bender](https://github.com/walterbender/)<br>
**Assisting Mentors**<br>
[Devin Ulibarri](https://github.com/pikurasa/)


------------

## Improve syth and sample features in Music Blocks

**Prerequisites**<br>
 - Experience with JavaScript
 - Experience with Music Blocks
 - Experience with Tone.JS

**Description**<br>
Users have two main methods within Music Blocks to play with sound: synths and samples. For our synth, we use tone.js. For samples, we use a .wav binaries and transpose the sound to different pitches. While these features work "well enough", there is still more that can been to make them useful. For this project, a contributor would work closely with their mentors to 1) update the sampler widget, 2) port a list of free/libre/open samples into Music Blocks, and 3) add to the *Set Instrument* feature and *Sampler Widget* the ability to assign multiple samples for the same instrument with criteria (e.g. high and low, short and long) for a more natural sound.

Updating the sampler widget will involve updating tone.js to its current version, debugging any issues that updates may cause, and making improvements to the UI/UX of the widget itself.

Porting samples into Music Blocks will require following the directions specified in the Music Blocks documentation to convert a curated list of samples. After completing this, the user-facing menus showing the samples will need to be updated and organized based on instrument type. There is some room to get creative with the presentation of the instruments, perhaps adding icons for each instrument.

The final part of the project is perhaps the most challenging. It will require adding additional functionality so that a user can either upload or record multiple samples of an instrument or voice to be assigned to a custom instrument in Music Blocks. Doing this will make the overall tone of the instruments more persuasive. For example, if the Music Blocks project has short, staccato sounds, the playback can use the short sample created by a recorded instrument.

**Project Length**<br>

**350** hours

**Difficulty**<br>

**Hard**<br>

**Coding Mentors**<br>
[Walter Bender](https://github.com/walterbender/)<br>
**Assisting Mentors**<br>
[Devin Ulibarri](https://github.com/pikurasa/)

------------

## Gen-AI instrument sample generation

**Prerequisites**<br>
 - Experience with JavaScript
 - Experience with Music Blocks
 - Experience with Tone.JS
 - Experience with LLMs/neural-networks

**Description**<br>
For this project, a contributor would work closely with their mentors create an API to a gen-AI to generate samples based on a user prompt.

In order to give users (nearly) limitless options for samples, we are adding to the project's scope a gen-AI-enabled sample generator. A user should be able to prompt a sound font, such as "heavy metal guitar with deep bass" or "soothing clarinet with a crisp attack" and get a result that they can use in their project's code. A contributor will need to extend our sample widget (which currently records audio) to accept a user prompt, create an API to call an LLM/neural-network backend, and test/tweak the gen-AI backend to create an appropriate sample for the user. The results of this part of the project need not be "perfect" by the end of the summer. A solid proof of concept will be sufficient.

**Project Length**<br>

**350** hours

**Difficulty**<br>

**Hard**<br>

**Coding Mentors**<br>
[Walter Bender](https://github.com/walterbender/)<br>
**Assisting Mentors**<br>
[Devin Ulibarri](https://github.com/pikurasa/)

------------

## Code generation for lesson plans and model abstraction layer

**Prerequisites**<br>
 - Experience with Python
 - Experience with Music Blocks
 - Experience with LLMs/Chatbots
 - Experience with Fine tuning methods and RAG.

**Description**<br>
Develop and train an open source Large Language Model to generate Music Blocks project code, enabling integration of code snippets to the lesson plan generator. By implementing a model abstraction layer, the system will remain flexible and model-agnostic, allowing seamless integration of different AI models while maintaining consistent code generation capabilities. This approach ensures long-term sustainability and adaptability as AI technology evolves, while keeping the core functionality of Music Blocks accessible and extensible.

Specifically, we would be working toward accomplishing the following:

- Train open source LLM to generate code to create new Music Blocks projects.
- Implement model abstraction layer to make the AI system model agnostic and robust.
- Increase database size by including more lesson plans and projects' data to get better response related to the projects.
- Implement Approximate Nearest Neighbor (ANN) algorithms for faster retrieval.
- Develop FastApi endpoints to deploy the model.
- Work on techniques to minimize hellucination.

**Project Length**<br>

**350** hours

**Difficulty**<br>

**Hard**<br>

**Coding Mentors**<br>
[Walter Bender](https://github.com/walterbender/)<br>
**Assisting Mentors**<br>
[Devin Ulibarri](https://github.com/pikurasa/)
