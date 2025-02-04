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
* [GTK4 exploration](#gtk4-exploration)
* [JS internationalization](#js-internationalization)
* [Sugarizer Human Activity pack](#sugarizer-human-activity-pack)

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

# JS internationalization

**Prerequisites**<br>
- Experience with JavaScript

**Project length**<br>
**175** hours

**Difficulty:**<br>
**Medium**

**Description**<br>

Our JavaScript activities are using a somewhat antiquated mechanism
for internationalization, the webL10n.js library. It does not even
support plurals or any language-specific formating.  i18next looks
like a well-maintained and promising alternative.

This project involves: (a) researching the state of art of language
localization for JavaScript, keeping in mind that we are currently
maintaining PO files; (b) making a recommendation as to the framework;
(c) proposing a path to implementation; and (d) implementing the
solution in Music Blocks. (Other JS projects can follow along.)

**Project Task Checklist**<br>
- research
- recommendation
- plan
- coding

**Coding Mentors**<br>
[Walter Bender](https://github.com/walterbender/)

-------------

# Sugarizer Human Activity pack

**Prerequisites**<br>
 - Experience with JavaScript/HTML5 in VanillaJS or with Vue.js
 - Experience with three.js 3D framework
 - Knowledge of 3D tools, capacity to create/combine 3D assets 

**Project length**<br>
**175** hours

**Difficulty:** &#9733; &#9733; &#9734; (medium)

**Description**<br>

The objective of this project is to:<br>
 - Finalize the 3D Human Body activity   
 - Create a new activity named Stickman Animation
<br>

<br>

![](assets/sugarizer_humanbody.png)

**3D Human Body activity**<br>
The human Body activity has been started on https://github.com/llaske/sugarizer/tree/feature/humanbody. 

Tasks to do: <br>
 - Identify the missing assets for the body layer and the organs layer (only skeleton layer is here today)  
 - Integrate these layers in the activity and the way to change layer    
 - Implement the shared mode for doctor mode 
 - Review the UI for toolbar and popups 
 - Localize the activity 
 - Suggest other improvements

<br>

![](assets/sugarizer_stickman.png)

**Stickman Animation activity**<br>
Create a new activity to allow creation of animated sequence of a stickman. 

The idea of the activity is a "keyframe animation" tool that lets you pose and program a stick figure to rotate, twist, turn, tumble, and dance.  The new activity can be integrated into many school subject areas such as creative writing, art, drama, geometry and computer programming.  Students can make figures that relate to a subject the class is studying, and share them with peers using collaboration feature. It helps children develop spatial and analytical thinking skills and to express ideas that they might not have words for yet. 

Features expected:<br>
 - Put the stickman figure in different poses by moving dots 
 - Create and order frames with the different poses created 
 - Play/Pause the whole frames 
 - Change speed 
 - Share and collaborate    
 - Export as a video 
 - Access to a list of existing fun templates
 - Import a photo of an human body to create a stickman figure in the same pose

Inspirations:<br>
 - https://activities.sugarlabs.org/en/sugar/addon/4044  
 - https://www.spatial.io/g/stick-animator  
 - https://flipanim.com/  
 - https://pivotanimator.net/  
 - https://drawastickman.com  
 - https://stickfigure-recorder.web.app/  


**First steps to starts**<br>

* Complete the [Sugarizer Vanilla Javascript activity development tutorial](https://github.com/llaske/sugarizer/blob/dev/docs/tutorial/VanillaJS/tutorial.md) or the [Sugarizer Vue.js activity development tutorial](https://github.com/llaske/sugarizer/blob/dev/docs/tutorial/VueJS/tutorial.md). Publish on Discord a video of the Pawn activity running.
* Start working of tasks listed for Human Body activity 
* Create a mockup of the Stickman Animation activity

**Mentor**<br>
[Lionel Laské](https://github.com/llaske/)

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
