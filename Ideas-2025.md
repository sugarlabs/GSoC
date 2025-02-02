# GSoC 2025 Ideas

## Project Ideas
* [Color sensor for Music Blocks for photos and real-time video](#Color-sensor-for-Music-Blocks-for-photos-and-real-time-video)
* [Interactive AI-powered Chatbot and Debugger for Music Blocks](#Interactive-AI-powered-Chatbot-and-Debugger-for-Music-Blocks)
* [Improve syth and sample features in Music Blocks](#Improve-syth-and-sample-features-in-Music-Blocks)
* [Generative AI Instrument Sample Generation for Music Blocks](#Generative-AI-Instrument-Sample-Generation-for-Music-Blocks)
* [AI Code generation for lesson plans and model abstraction layer](#AI-Code-generation-for-lesson-plans-and-model-abstraction-layer)
* [Add AI-assistant to the Write Activity](#Add-an-AI-assistant-to-the-Write-Activity)
* [Refactor the Infoslicer Activity to generate plain-language summaries](#Refactor-the-Infoslicer-Activity-to-generate-plain-language-summaries)
* [Refactor the chatbot in the Speak Activity to use gen-AI](#Refactor-the-chatbot-in-the-Speak-Activity-to-use-gen-AI)
* [Sugar on Raspberry Pi](#sugar-on-raspberry-pi)
* [Math Games](#math-games)
* [GTK4 exploration](#gtk4-exploration)




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

## Generative AI Instrument Sample Generation for Music Blocks

**Prerequisites**<br>
 - Experience with JavaScript and Python
 - Experience with Music Blocks
 - Experience with Tone.JS
 - Experience with LLMs/neural-networks

**Description**<br>
For this project, a contributor would work closely with their mentors create an API to a gen-AI to generate samples based on a user prompt.

In order to give users (nearly) limitless options for samples, we are adding to the project's scope a gen-AI-enabled sample generator. A user should be able to prompt a sound font, such as "heavy metal guitar with deep bass" or "soothing clarinet with a crisp attack" and get a result that they can use in their project's code. A contributor will need to extend our sample widget (which currently records audio) to accept a user prompt, create an API to call an LLM/neural-network backend, and test/tweak the gen-AI backend to create an appropriate sample for the user. The results of this part of the project need not be "perfect" by the end of the summer. A solid proof of concept will be sufficient.

In particular, our focus will be on achieving the following objectives:

- Train an open-source LLM using music-heavy project data to generate sample code.  
- Extend the sample widget to support user prompts for AI-generated sound samples.  
- Develop an LLM-based generative AI backend to produce high-quality, relevant sound samples.  
- Build a high-performance API using FastAPI to streamline interactions between the widget and the LLM.
- Work on techniques to minimize hallucinations and improve contextual accuracy.

**Project Length**<br>

**350** hours

**Difficulty**<br>

**Hard**<br>

**Coding Mentors**<br>
[Walter Bender](https://github.com/walterbender/)<br>
**Assisting Mentors**<br>
[Devin Ulibarri](https://github.com/pikurasa/)

------------

## AI Code generation for lesson plans and model abstraction layer

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
- Work on techniques to minimize hallucination.

**Project Length**<br>

**350** hours

**Difficulty**<br>

**Hard**<br>

**Coding Mentors**<br>
[Walter Bender](https://github.com/walterbender/)<br>
**Assisting Mentors**<br>
[Devin Ulibarri](https://github.com/pikurasa/)

------------

## Add an AI-assistant to the Write Activity

**Prerequisites**<br>
 - Experience with Python
 - Experience with Sugar activities
 - Experience with LLMs/Chatbots

**Description**<br>

Sugar pioneered peer editing in its Write activiy. However, the Write
Activity has never had any serious support for grammar correction
(just spell check) and none of the more recent developments around
AI-assisted writing. The goal of this project is to add AI-assistance
to the writing process: both in the form of providing feedback as to
what has been written and making suggestions as to what might be
written.

The challenge will be both in terms of workflow integration and UX.

**Project Length**<br>

**350** hours

**Difficulty**<br>

**High**

**Coding Mentors**<br>
[Walter Bender](https://github.com/walterbender/)
[Ibiam Chihurumnaya](https://github.com/chimosky/)

**Assisting Mentors**<br>

------------

## Refactor the Infoslicer Activity to generate plain-language summaries

**Prerequisites**<br>
 - Experience with Python
 - Experience with Sugar activities
 - Experience with LLMs/Chatbots

**Description**<br>

The Infoslicer Activity is designed to help teachers extract content from the Wikipedia in order to create lesson plans. This is currently a manual, extractive process. It is well suited to generative AI. The goal would be to have a teacher type in a theme for a lesson and have the AI create a simple lesson plan, which the teacher can then edit.

The biggest challenge to summarization using generative AI is hallucinations. A work-around for this is to include a validation step that surfaces evidence (or lack of evidence) for each assertion in the lesson plan. This will introduce some workflow and UX challenges.

**Project Length**<br>

**350** hours

**Difficulty**<br>

**High**

**Coding Mentors**<br>
[Walter Bender](https://github.com/walterbender/)
[Ibiam Chihurumnaya](https://github.com/chimosky/)

**Assisting Mentors**<br>

------------

 ## Refactor the chatbot in the Speak Activity to use gen-AI

**Prerequisites**<br>
 - Experience with Python
 - Experience with Sugar activities
 - Experience with LLMs/Chatbots

**Description**<br>

The [Speak Activity](https://github.com/sugarlabs/speak) is one of most popular Sugar activities. It allows
someone just beginning to familiarize themselves with reading to
interact with synthetic speech. It has both chat and chatbot
capabilities, so that learners can share what they type with others,
often using invented spelling. It would be a nice improvement if there
were a chatbot option to allow a learner to have a conversation with a
more modern chatbot -- LLM-based. This would contextualize the
learner's experience with writing -- a tool for both self expression and
communication.

The project would entail both enabling the LLM chatbot and doing some
tuning in order to accommodate invented spelling. Finally, it will be
important to create the proper persona, in this case, an adult
explaining to a young child.

**Project Length**<br>

**175** hours

**Difficulty**<br>

**Medium**

**Coding Mentors**<br>
[Ibiam Chihurumnaya](https://github.com/chimosky/)

**Assisting Mentors**<br>
[Walter Bender](https://github.com/walterbender/)

------------

## Sugar on Raspberry Pi

**Prerequisites**<br>
- Experience with Raspberry Pi OS, and packaging.  
- Knowledge of Python and Sugar activity development.  
- Familiarity with Raspberry Pi hardware, GPIO, and sensors.  
- Ability to optimize and package Sugar for Raspberry Pi OS

**Project length**<br>
**350** hours

**Difficulty**<br>
**Medium**

**Description**<br>

### Enhancing Sugar on Raspberry Pi for the Maker Community 

Sugar runs efficiently on Raspberry Pi, making it an excellent platform for **education and maker communities**. This project aims to **ensure full compatibility**, optimize packaging for **Raspberry Pi OS**, and enhance Sugar activities by leveraging **Raspberry Pi hardware and sensors**.  

### Key Focus Areas  

**1. Strengthening Turtle Art’s Raspberry Pi Support**  
- **Turtle Art already has built-in support for Raspberry Pi GPIO.**  
- Enhance **documentation and example projects** to help users utilize RPi-specific features.  
- Improve **hardware integration** to make it more accessible for makers, students, and educators.  

**2. Expanding Support for Pippy, Measure, and Physics Activities**  
- **Pippy** (Python coding environment) can be extended with RPi libraries like **GPIO Zero** and **Sense HAT** for hands-on coding.  
- **Measure** can leverage Raspberry Pi’s **I2C and SPI sensors** (e.g., temperature, humidity, distance sensors).  
- **Physics Activity** can be enhanced to simulate real-world interactions using **RPi-connected hardware** (e.g., motors, servos, accelerometers).    

**3. Sensor-Based Activity Development for Raspberry Pi OS** 
- Design new **interactive learning activities** using sensors like:  
  - **Ultrasonic Sensors** (for measuring distance in real-world projects).  
  - **Temperature & Humidity Sensors** (for science experiments).  
  - **Accelerometers & Gyroscopes** (for physics-based motion experiments). 
  - More Activities like Gallery and RPi CC development.

**4. Comprehensive Documentation for Maker Community** 
- Create a **detailed guide** on setting up **Sugar on Raspberry Pi OS**.  
- Provide **step-by-step tutorials** on using Sugar with Raspberry Pi’s **GPIO, sensors, and external modules**.  
- Ensure the documentation is **accessible to educators, students, and makers**.   

**5. Video Tutorials & Community Outreach** 
- Develop **video tutorials** demonstrating how to use and develop Sugar activities with Raspberry Pi.  
- Promote the activities via **social media platforms** to engage the maker community.
- Encourage **contributions and collaboration** from Raspberry Pi and Sugar Labs communities.

By ensuring **seamless integration**, **enhanced documentation**, and **community engagement**, this project will make **Sugar on Raspberry Pi** a powerful tool for learning, experimentation.

**Coding Mentors**<br>
[Ibiam Chihurumnaya](https://github.com/chimosky/)
[Walter Bender](https://github.com/walterbender/)


-------------

## Math Games

**Prerequisites**<br>
 - Experience with Python
 - Experience with Sugar activities
 - Interest in math puzzles and games

**Description**<br>

While Sugar has lots of activities, you can never have enough math
games and puzzles. There is a great website with lots of ideas (See
https://www.cut-the-knot.org/) for Sugar acitvities. This project
(either medium or large) would be to develop 4 to 8 new activities
based on some of Bogomolny's ideas.

These are the Maths games of interest:

* [Lewis Carroll's Game of Logic](https://www.cut-the-knot.org/LewisCarroll/LCGame.shtml)
* [Euclid's Game](https://www.cut-the-knot.org/blue/EuclidAlg.shtml)
* [Odd Scoring](http://cut-the-knot.org/Curriculum/Games/OddScoring.shtml)
* [The Candy Game](http://www.cut-the-knot.org/Curriculum/Algebra/IntergerIterationsOnACircle.shtml)
* [Sierpinski Gasket](https://www.cut-the-knot.org/Curriculum/Geometry/Tremas.shtml)
* [Make An Identity](http://www.cut-the-knot.org/Curriculum/Algebra/Latin.shtml)
* Number Detective - 
Number Detective is a fun math game that teaches pattern recognition and AI basics.  
User input a number sequence, and the AI predicts the next number.  
If the AI is wrong, the user corrects it, helping it learn over time!  
The game uses simple rule-based logic and machine learning for predictions.  

* Sorting Hat AI -  Sorting Hat AI is an interactive game that teaches how AI classifies objects.  
User label animals, shapes, or numbers, and the AI learns to classify new ones.  
If the AI makes a mistake, kids correct it, improving its learning over time!  
The game uses **Decision Trees** or **k-Nearest Neighbors (k-NN)** for classification.  

These are some of ideas , more ideas can be added/changed

**Project Length**<br>
**350** hours

**Difficulty**<br>
**Medium**

**Coding Mentors**<br>
[Ibiam Chihurumnaya](https://github.com/chimosky/)

**Assisting Mentors**<br>
[Walter Bender](https://github.com/walterbender/)

------------

# GTK4 Exploration

**Prerequisites**<br>
- Experience with C
- Experience with Python
- Experience with GTK
- Good understanding of Sugar Core architecture

**Project length**<br>
**350** hours

**Difficulty:**<br>
**High**

**Description**<br>

Sugar 0.120 runs on GTK3 and needs to be ported to GT4, we need to
port Sugar and it's core activities to support GTK4 before GTK3 gets
to its EOL.

**Project Task Checklist**
- Migrate minimal [sugar-toolkit-gtk3](https://github.com/sugarlabs/sugar-toolkit-gtk3) components to     support Hello World activity, in particular the activity and graphics classes.
- Migrate [Hello World](https://github.com/sugarlabs/hello-world) activity.
- Document migration strategy based on extending any existing upstream GTK3 to GTK4 porting documenta    tion.
- Migrate remaining toolkit components.
- Extend Hello World to use remaining toolkit components, and rename as a Toolkit Test activity,
- Migrate [Sugar](https://github.com/sugarlabs/sugar).
- Migrate the [Fructose](https://wiki.sugarlabs.org/go/Development_Team/Release/Modules) activity set    , as time permits.

**Steps to start**
- Plan migration.
- Setup a [live build](https://github.com/sugarlabs/sugar/blob/master/docs/development-environment.md    #sugar-live-build) development environment.
- See the [GTK4 migrating](https://docs.gtk.org/gtk4/migrating-3to4.html#stop-using-direct-access-to-    gdkevent-structs) doc.

**Coding Mentors**<br>
[Ibiam Chihurumnaya](https://github.com/chimosky/)

-------------


# Administrative notes

Above are a list of ideas we've planned for GSoC 2025 projects.
If you have any ideas which can be useful to us, but are not in the
list, we'd love to hear from you.  You need not be a potential
student or a mentor to suggest ideas.

   * [Criteria for Ideas](#criteria-for-ideas)
   * [Coding Mentors](#coding-mentors)
   * [Assisting Mentors](#assisting-mentors)
   * [Everyone Else](#everyone-else)
   * [Suggested Issues](#suggested-issues)

## Criteria for Ideas
1. Does it fill an empty pedagogy niche in the activity set for Sugar
   or Sugarizer,
2. Does it increase quality of our software products (Sugar, activities,
   Music Blocks, or Sugarizer),
3. Does it _not_ involve any project infrastructure, e.g. not another
   app store, web site, or developer landing page,
4. Do we have a developer _now_ who would be willing and able to do it
   if a student was not available, and who can _promise_ to do it if a
   student is not selected; these are shown as a _coding mentor_,

## Coding Mentors
For each idea, we must have offers from one or more _coding mentors_
willing and able to assist students with coding questions.

Requirements for a _coding mentor_ are a demonstrated coding ability
in the form of contributions of code to Sugar Labs.

Mentors for a project will be assigned after proposals are received.

## Assisting Mentors For each idea, we may have offers from
mentors _who do not code_ willing to assist students in various
other ways, such as gathering requirements, visual design,
testing, and deployment; these are shown as an _assisting
mentor_.

The only requirement for an _assisting mentor_ is _knowledge of
the project_.

Mentors for a project will be assigned after proposals are received.

## Everyone Else

Everyone else in Sugar Labs may also be involved with these
projects, through mailing lists, Wiki, and GitHub.

The difference between a _mentor_ and _everyone else_, is that a
_mentor_ is obliged to respond when a student has a question,
even if the answer is "I don't know."
When a _mentor_ receives a question for which the best forum is
_everyone else_, then they are to respectively redirect the
student to ask _everyone else_.  See [Be
flexible](https://github.com/sugarlabs/sugar-docs/blob/master/src/CODE_OF_CONDUCT.md#be-flexible)
and [When you are unsure, ask for
help](https://github.com/sugarlabs/sugar-docs/blob/master/src/CODE_OF_CONDUCT.md#when-you-are-unsure-ask-for-help)
in our Code of Conduct.

## Suggested Issues

For some ideas, there is a list of 'Suggested issues to work on'.
These may help you to get familiar with the project.  The more
you work on these issues, the more experienced you will be for
the project.  However, this is not a strict list.  You _should_
try and explore other issues as well.
