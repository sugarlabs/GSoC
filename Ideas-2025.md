# GSoC 2025 Ideas

## Project Ideas
* [Interactive AI-powered Chatbot and Debugger for Music Blocks](#Interactive-AI-powered-Chatbot-and-Debugger-for-Music-Blocks)

[Administrative notes](#administrative-notes)

------------

## Interactive AI-powered Chatbot and Debugger for Music Blocks

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
