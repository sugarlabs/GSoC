# GSoC 2025 Ideas

## Project Ideas
* [Interactive Chatbot and Debugger for Music Blocks](#Interactive-Chatbot-and-Debugger-for-Music-Blocks)

[Administrative notes](#administrative-notes)

------------

## Interactive Chatbot and Debugger for Music Blocks

**Prerequisites**<br>
 - Experience with Python
 - Experience with Music Blocks
 - Experience with LLMs/Chatbots
 - Experience with AWS
 - Experience with FastAPI

**Description**<br>
The idea to enhance Music Blocks with a chatbot and project debugger. It must fulfill the gap between users' creative ideas and their 
ability to troubleshoot or fully utilize its features.
The chatbot could provide real-time assistance—answering questions, explaining features, and offering creative suggestions—while a project debugger helps users quickly identify and resolve issues in their project or blocks. This would make the platform more accessible, especially for beginners and streamlining the process for advanced users to debug and experiment with new features.

**Project Length**<br>

**350** hours

**Difficulty**<br>

**Hard**<br>

**Coding Mentors**<br>
[Walter Bender](https://github.com/walterbender/)<br>
**Assisting Mentors**<br>
[Devin Ulibarri](https://github.com/pikurasa/)


------------

## Improved tone/timbre features

**Prerequisites**<br>
 - Experience with JavaScript
 - Experience with Music Blocks
 - Experience with Tone.JS
 - Experience with LLMs/neural-networks

**Description**<br>
Users have two main methods within Music Blocks to play with sound: synths and samples. For our synth, we use tone.js. For samples, we use a .wav binaries and transpose the sound to different pitches. While these features work "well enough", there is still more that can been to make them useful. For this project, a contributor would work closely with their mentors to 1) update the sampler widget, 2) port a list of free/libre/open samples into Music Blocks, and 3) create an API to a gen-AI to generate samples based on a user prompt.

Updating the sampler widget will involve updating tone.js to its current version, debugging any issues that updates may cause, and making improvements to the UI/UX of the widget itself.

Porting samples into Music Blocks will require following the directions specified in the Music Blocks documentation to convert a curated list of samples. After completing this, the user-facing menus showing the samples will need to be updated and organized based on instrument type. There is some room to get creative with the presentation of the instruments, perhaps adding icons for each instrument.

The final part of this project requires a little bit of gen-AI experience. In order to give users (nearly) limitless options for samples, we are adding to the project's scope a gen-AI-enabled sample generator. A user should be able to prompt a sound font, such as "heavy metal guitar with deep bass" or "soothing clarinet with a crisp attack" and get a result that they can use in their project's code. A contributor will need to extend our sample widget (which currently records audio) to accept a user prompt, create an API to call an LLM/neural-network backend, and test/tweak the gen-AI backend to create an appropriate sample for the user. The results of this part of the project need not be "perfect" by the end of the summer. A solid proof of concept will be sufficient.

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