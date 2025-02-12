# GSoC 2025 Ideas

## Project Ideas

* [Git backend for Turtle Blocks and Music Blocks](#Git-backend-for-Turtle-Blocks-and-Music-Blocks)
* [Color sensor for Music Blocks for photos and real-time video](#Color-sensor-for-Music-Blocks-for-photos-and-real-time-video)
* [Interactive AI-powered Chatbot and Debugger for Music Blocks](#Interactive-AI-powered-Chatbot-and-Debugger-for-Music-Blocks)
* [Improve synth and sample features in Music Blocks](#Improve-synth-and-sample-features-in-Music-Blocks)
* [Generative AI Instrument Sample Generation for Music Blocks](#Generative-AI-Instrument-Sample-Generation-for-Music-Blocks)
* [AI Code generation for lesson plans and model abstraction layer](#AI-Code-generation-for-lesson-plans-and-model-abstraction-layer)
* [Music Blocks 4 Program Engine](#Music-Blocks-4-Program-Engine)
* [Music Blocks 4 Masonry Module](#Music-Blocks-4-Masonry-Module)
* [Add AI-assistant to the Write Activity](#Add-an-AI-assistant-to-the-Write-Activity)
* [Refactor the Infoslicer Activity to generate plain-language summaries](#Refactor-the-Infoslicer-Activity-to-generate-plain-language-summaries)
* [Refactor the chatbot in the Speak Activity to use gen-AI](#Refactor-the-chatbot-in-the-Speak-Activity-to-use-gen-AI)
* [GTK4 exploration](#gtk4-exploration)
* [JS internationalization](#js-internationalization)
* [Sugarizer Human Activity pack](#sugarizer-human-activity-pack)
* [Pippy Debugger](#pippy-debugger)
* [Math Games](#math-games)

------------

## Git backend for Turtle Blocks and Music Blocks

**Prerequisites**<br>
 - Experience with Git
 - Experience with JavaScript
 - Experience with Music Blocks and Turtle Blocks

**Description**<br>

Portfolio creation, reflection, and collaboration are important parts
of the educational philosophy at Sugar Labs, and Git version control
is a great way to explore all these things.

At Sugar Labs, we've created some initial
designs](https://drive.google.com/file/d/15G0vtr-1JyzCorwmgjvXE-37vwZMLgJD/view?usp=sharing)
for a couple approaches to introducing Git version control to young
learners. This proposal focuses on introducing Git version control
through our existing web-based programs, namely Turtle Blocks and
Music Blocks. Both these programs have a feature to publish projects
to a server called the "Planet". Currently the Planet just stores
projects that users have made, without any sort of version control
features like *fork*, *history*, or *checkout*.

This project requires a contributor to work closely with Sugar Labs
mentors to implement a system of Git version control features, running
on a backend server, that are exposed to the user.

References:
 - <https://drive.google.com/file/d/15G0vtr-1JyzCorwmgjvXE-37vwZMLgJD/view?usp=sharing>

**Project Length**<br>

**350** hours

**Difficulty**<br>

**Hard**<br>

**Coding Mentors**<br>
[Walter Bender](https://github.com/walterbender/)<br>

**Assisting Mentors**<br>
[Devin Ulibarri](https://github.com/pikurasa/)

## Color sensor for Music Blocks for photos and real-time video

**Prerequisites**<br>
 - Experience with JavaScript
 - Experience with Music Blocks

**Description**<br>

Music Blocks has a feature to detect the color of pixels generated
from drawing within the program, but it cannot detect the color of
pixels from images that are either uploaded or from a webcam. By
adding a feature to detect color from both uploaded images and a live
webcam stream, users would be able to implement *Lego music notation
for the blind* and similarly interactive programs.

The goal of the project is to develop extended functionality to our
existing tools of turtle/mouse glyph movement and limited color
detection to sense color from uploaded images, as well as the
real-time feed from a webcam. Upon successful implementation, the
turtle/mouse glyph will be able to detect the color of pixels
underneath it, regardless of whether those pixels were drawn by the
turtle/mouse itself, part of an uploaded image stamped to the canvas,
or part of a live webcam video feed into Music Blocks. One test of
success is to run our *Lego music notation for the blind* project with
a live feed. The result should be able to playback and record the
abstract brick notation based on its contrasting colors.

References:
 - <https://medium.com/@sugarlabs/reflections-from-constructing-modern-knowledge-2024-1ce7d60fbb1c>
 - <https://vimeo.com/983707992>
 - <https://vimeo.com/983697295>

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

The idea is to enhance Music Blocks with an AI-powered chatbot and
project debugger. This feature aims to bridge the gap between users'
creative ideas and their ability to troubleshoot or fully utilize the
platform's features. The AI chatbot would provide real-time assistance
by answering questions, explaining features, and offering creative
suggestions, while the project debugger would help users quickly
identify and resolve issues in their projects or block
connections. This enhancement would make the platform more accessible
for beginners while streamlining the debugging and experimentation
process for advanced users.

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

## Improve synth and sample features in Music Blocks

**Prerequisites**<br>
 - Experience with JavaScript
 - Experience with Music Blocks
 - Experience with Tone.JS

**Description**<br>

Users have two main methods within Music Blocks to play with sound:
synths and samples. For our synth, we use tone.js. For samples, we use
.wav binaries and transpose the sound to different pitches. While
these features work "well enough," there is still more that can been
to make them useful. For this project, a contributor would work
closely with their mentors to 1) update the sampler widget, 2) port a
list of free/libre/open samples into Music Blocks, and 3) add to the
*Set Instrument* feature and *Sampler Widget* the ability to assign
multiple samples for the same instrument with criteria (e.g. high and
low, short and long) for a more natural sound.

Updating the sampler widget will involve updating tone.js to its
current version, debugging any issues that updates may cause, and
making improvements to the UI/UX of the widget itself.

Porting samples into Music Blocks will require following the
directions specified in the Music Blocks documentation to convert a
curated list of samples. After completing this, the user-facing menus
showing the samples will need to be updated and organized based on
instrument type. There is some room to get creative with the
presentation of the instruments, perhaps adding icons for each
instrument.

The final part of the project is perhaps the most challenging. It will
require adding additional functionality so that a user can either
upload or record multiple samples of an instrument or voice to be
assigned to a custom instrument in Music Blocks. Doing this will make
the overall tone of the instruments more persuasive. For example, if
the Music Blocks project has short, staccato sounds, the playback can
use the short sample created by a recorded instrument.

References:
 - <https://github.com/sugarlabs/musicblocks/tree/master/sounds/samples>
 - "Processing for pitched (non-percussion) samples" section of <https://wiki.sugarlabs.org/go/Music_Blocks/2025-02-09-meeting>
 - A professionals guide to creating "virtual instruments": <https://www.nicolastiteux.com/en/blog/making-a-virtual-instrument-a-guide-to-sampling/>
 - Possible samples: <https://philharmonia.co.uk/resources/sound-samples/>
 - Possible samples: <https://github.com/sonic-pi-net/sonic-pi/tree/dev/etc/samples>

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

For this project, a contributor would work closely with their mentors
create an API to a gen-AI to generate samples based on a user prompt.

In order to give users (nearly) limitless options for samples, we are
adding to the project's scope a gen-AI-enabled sample generator. A
user should be able to prompt a sound font, such as "something between
a heavy metal guitar and a lion roar" or "something between a clarinet
and a human singing 'ah'" and get a result that they can use in their
project's code. A contributor will need to extend our sample widget
(which currently records audio) to accept a user prompt, create an API
to call an LLM/neural-network backend, and test/tweak the gen-AI
backend to create an appropriate sample for the user. The results of
this part of the project need not be "perfect" by the end of the
summer. A solid proof of concept will be sufficient.

In particular, our focus will be on achieving the following objectives:

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

Develop and train an open-source Large Language Model to generate Music Blocks project code, enabling the integration of code snippets into the lesson plan generator for better understanding of the projects. Additionally, by implementing a model abstraction layer, the AI system will remain flexible and model-agnostic, allowing seamless integration of different AI models while maintaining consistent code generation capabilities. This approach ensures long-term sustainability and adaptability as AI technology evolves while keeping the core functionality of Music Blocks accessible and extensible.

Specifically, we would be working toward accomplishing the following:

- Train open source LLM to generate code to create new Music Blocks projects.
- Implement model abstraction layer to make the AI system model agnostic and robust.
- Increase database size by including more lesson plans and projects' data to get better response related to the projects.
- Implement Approximate Nearest Neighbor (ANN) algorithms for faster retrieval.
- Develop FastAPI endpoints to deploy the model.
- Work on and implement techniques to minimize hallucination.

**Project Length**<br>

**350** hours

**Difficulty**<br>

**Hard**<br>

**Coding Mentors**<br>
[Walter Bender](https://github.com/walterbender/)<br>

**Assisting Mentors**<br>
[Devin Ulibarri](https://github.com/pikurasa/)

------------

# Music Blocks 4 Masonry Module

**Prerequisites**

* Proficiency in **TypeScript** and **Object-Oriented Programming**
* Experience with writing unit tests using **Jest**/**Vitest**
* Good understanding of the **JavaScript Event Loop**
* Understanding of **Abstract Syntax Trees** (**AST**)

**Tech Stack**

TypeScript 5, Vitest, Vite

**Description**

_Music Blocks_ is a programming platform, and at its core is the execution engine
responsible for running _Music Blocks_ programs. This project will focus on
building the execution engine and the necessary components to represent and execute
_Music Blocks_ programs in-memory.

The project will begin by refining the Object-Oriented program syntax constructs.
These constructs will encapsulate the logic for each syntax element and will serve
as the foundation for developing a framework to represent Abstract Syntax Trees
(ASTs) for _Music Blocks_ programs. Additional utilities will be built to manage
instances of these syntax constructs, thus completing the static pieces.

Next, several components will need to be developed to execute the program ASTs,
forming the dynamic pieces of the project. Key components include:

* **Parser:** Responsible for parsing the nodes of the ASTs in inorder traversal.
* **State Manager:** Manages the program state at any given point during execution.
* **Interpreter:** Executes individual expressions and instructions.

It’s important to note that _Music Blocks_ programs combine both imperative and
declarative constructs. Additionally, some instructions in the programs execute
over a time duration, and the programs themselves are multi-threaded. These threads
must run concurrently while ensuring proper synchronization.

We currently have a work-in-progress on
[github.com/sugarlabs/musicblocks-v4-lib](https://github.com/sugarlabs/musicblocks-v4-lib),
but some design decisions need to be revisited. This project will involve understanding
and refining these design choices and completing the remaining components.

The overall objectives are as follows:

* Collaborate with project maintainers to define all expected functionalities and
behaviors, and write a technical specification.

* Collaborate with project maintainers to develop a concrete execution algorithm,
addressing time-based instructions, concurrency, and synchronization.

* Refine and complete the static components responsible for program representation.

* Refine and complete the dynamic components responsible for program execution.

* Write comprehensive unit tests for all components.

* Focus on optimizing runtime performance.

**Project Length:** **350** hours

**Difficulty:** **High** (&#9733; &#9733; &#9733; &#9733; &#9734;)

**Mentors**<br/>
[Anindya Kundu](https://github.com/meganindya/)

**Assisting Mentors**<br/>
[Walter Bender](https://github.com/waltebender/)<br/>
[Devin Ulibarri](https://github.com/pikurasa/)

------------

# Music Blocks 4 Program Engine

**Prerequisites**

* Proficiency in **TypeScript**
* Proficiency in **JavaScript DOM API**
* Experience with **React Functional Components and Hooks**
* Familiarity with **Storybook** and **Vitest**
* Familiarity with **SVG paths and groups**

**Description**

_Music Blocks_ programs are designed to be built interactively by connecting
program constructs, which are visually represented as snap-together, Lego-like
graphical bricks. The goal is to develop a module for _Music Blocks_ (_v4_) that
enables the creation of _Music Blocks_ programs.

The project will begin with the development of a framework for generating individual
brick components that represent various program syntax constructs. This will be
followed by the creation of utilities to represent any program structure through
visual connections between the bricks. Next, a component will be built to display
all available program bricks, organized into categories, sections, and groups.
Finally, a workspace will be developed where users can drag-and-drop, as well as
connect and disconnect the program bricks to create their programs.

To draw the bricks, we will use SVG paths, so a solid understanding of SVG path
commands is crucial. The development will follow an Object-Oriented Programming
approach in TypeScript, with the rendering and management of visual states handled
using React Functional Components. A strong understanding of both TypeScript and
React is expected.

This project began last year, and you will be expected to build upon the progress
made and complete the module.

The overall objectives are as follows:

* Collaborate with project maintainers to create a design document outlining
functional requirements, UI considerations, both high-level and low-level designs,
and a technical specification.

* Develop utilities to generate SVG paths for the bricks based on configurations.

* Build utilities to represent and manipulate _Music Blocks_ programs in-memory.

* Develop the four individual submodules outlined above.

* Write Storybook stories to document and showcase UI components.

* Implement unit tests for functions and classes using Vitest.

* Focus on optimizing processing performance.

* Export a minimal API for integration with other parts of the application.

**Project Length:** **350** hours

**Difficulty:** **Hard** (&#9733; &#9733; &#9733; &#9733; &#9733;)

**Tech Stack**

TypeScript 5, React 18, Sass, Storybook, Vitest, Vite

**Mentors**<br/>
[Anindya Kundu](https://github.com/meganindya/)

**Assisting Mentors**<br/>
[Walter Bender](https://github.com/waltebender/)<br/>
[Devin Ulibarri](https://github.com/pikurasa/)

------------

## Add an AI-assistant to the Write Activity

**Prerequisites**<br>
 - Experience with Python
 - Experience with Sugar activities
 - Experience with LLMs/Chatbots

**Description**<br>

Sugar pioneered peer editing in its Write Activity. However, the Write
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

The Infoslicer Activity is designed to help teachers extract content
from the Wikipedia in order to create lesson plans. This is currently
a manual, extractive process. It is well suited to generative AI. The
goal would be to have a teacher type in a theme for a lesson and have
the AI create a simple lesson plan, which the teacher can then edit.

The biggest challenge to summarization using generative AI is
hallucinations. A work-around for this is to include a validation step
that surfaces evidence (or lack of evidence) for each assertion in the
lesson plan. This will introduce some workflow and UX challenges.

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

The [Speak Activity](https://github.com/sugarlabs/speak) is one of
most popular Sugar activities. It allows someone just beginning to
familiarize themselves with reading to interact with synthetic
speech. It has both chat and chatbot capabilities, so that learners
can share what they type with others, often using invented
spelling. It would be a nice improvement if there were a chatbot
option to allow a learner to have a conversation with a more modern
chatbot -- LLM-based. This would contextualize the learner's
experience with writing -- a tool for both self expression and
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

**Description**<br>

Sugar 0.120 runs on GTK3 and needs to be ported to GT4, we need to
port Sugar and its core activities to support GTK4 before GTK3 gets
to its EOL.

**Project Task Checklist**

- Migrate minimal [sugar-toolkit-gtk3](https://github.com/sugarlabs/sugar-toolkit-gtk3) components to support Hello World activity, in particular the activity and graphics classes.
- Migrate [Hello World](https://github.com/sugarlabs/hello-world) activity.
- Document migration strategy based on extending any existing upstream GTK3 to GTK4 porting documentation.
- Migrate remaining toolkit components.
- Extend Hello World to use remaining toolkit components, and rename as a Toolkit Test activity,
- Migrate [Sugar](https://github.com/sugarlabs/sugar).
- Migrate the [Fructose](https://wiki.sugarlabs.org/go/Development_Team/Release/Modules) activity set, as time permits.

**Steps to start**
- Plan migration.
- Setup a [live build](https://github.com/sugarlabs/sugar/blob/master/docs/development-environment.md#sugar-live-build) development environment.
- See the [GTK4 migrating](https://docs.gtk.org/gtk4/migrating-3to4.html#stop-using-direct-access-to-gdkevent-structs) doc.

**Project length**<br>
**350** hours

**Difficulty:**<br>
**High**

**Coding Mentors**<br>
[Ibiam Chihurumnaya](https://github.com/chimosky/)

-------------

# JS internationalization

**Prerequisites**<br>
- Experience with JavaScript

**Description**<br>

Our JavaScript activities are using a somewhat antiquated mechanism
for internationalization, the webL10n.js library. It does not even
support plurals or any language-specific formatting. i18next looks like
a well-maintained and promising alternative.

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

**Project length**<br>
**175** hours

**Difficulty:**<br>
**Medium**

**Coding Mentors**<br>
[Walter Bender](https://github.com/walterbender/)

-------------

# Sugarizer Human Activity pack

**Prerequisites**<br>
 - Experience with JavaScript/HTML5 in VanillaJS or with Vue.js
 - Experience with three.js 3D framework
 - Knowledge of 3D tools, capacity to create/combine 3D assets 

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

The idea of the activity is a "keyframe animation" tool that lets you
pose and program a stick figure to rotate, twist, turn, tumble, and
dance.  The new activity can be integrated into many school subject
areas such as creative writing, art, drama, geometry and computer
programming.  Students can make figures that relate to a subject the
class is studying, and share them with peers using collaboration
feature. It helps children develop spatial and analytical thinking
skills and to express ideas that they might not have words for yet.

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

**Project length**<br>
**175** hours

**Difficulty:** &#9733; &#9733; &#9734; (medium)

**Coding Mentors**<br>
[Lionel Laské](https://github.com/llaske/)

**Assisting Mentors**<br>
[Samarth Bagga](https://github.com/SamarthBagga/)

## Pippy Debugger

**Prerequisites**<br>
 - Experience with Python
 - Experience with Sugar activities
 - Experience with LLMs/Chatbots

**Description**<br>

Many LLM programs for coding are almost exclusively marketed as
"helping you write code for you". However, we believe that LLMs can
also assist learners to *debug their code*. This project proposal is
to create an LLM-powered debugger for Pippy, the Sugar Activity for
creating code in Python.

The proposed Pippy Debugger integrates with the existing Pippy
Activity. The LLM-powered debugger should be able to read a learner's
code and offer suggestions for improvement when prompted. It should
also help engage the learning in a conversation about how to discover
where to look to find bugs and how to think about resolving them -- in
other words, take the learning on a debugging journey as opposed to
just spoon-feeding a solution. And since we work with youth, we need
to make sure that the debugger's output is age-appropriate. The Pippy
interface will also be updated to expose the new feature to a user.

**Project Length**<br>

**175** hours

**Difficulty**<br>

**Medium**

**Coding Mentors**<br>
[Walter Bender](https://github.com/walterbender/)
[Ibiam Chihurumnaya](https://github.com/chimosky/)

-------------

## Math Games

**Prerequisites**<br>
 - Experience with Python
 - Experience with Sugar activities
 - Interest in math puzzles and games

**Description**<br>

While Sugar has lots of activities, you can never have enough math
games and puzzles.This project would be to develop 8 new maths activities.

These are some of the tentative Maths games of interest:

* [Four Color map game](https://www.transum.org/maths/activity/colouring/)
* [Broken Calculator](https://toytheater.com/broken-calculator/)
* [Soma cubes](https://www.britannica.com/topic/Soma-Cubes),
* [Fifteen Puzzle](https://www.britannica.com/topic/Fifteen-Puzzle).
* [Euclid's Game](https://www.cut-the-knot.org/blue/EuclidAlg.shtml)
* [Odd Scoring](http://cut-the-knot.org/Curriculum/Games/OddScoring.shtml)
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

Note: These are some tentative ideas for math games. Further updates, additions, or modifications can be made through discussions with mentors to develop the best possible games.

**Project Length**<br>
**350** hours

**Difficulty**<br>
**Medium**

**Coding Mentors**<br>
[Ibiam Chihurumnaya](https://github.com/chimosky/)

**Assisting Mentors**<br>
[Walter Bender](https://github.com/walterbender/)

------------

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
_mentor_ is obliged to respond when a student has a question, even if
the answer is "I don't know."  When a _mentor_ receives a question for
which the best forum is _everyone else_, then they are to respectively
redirect the student to ask _everyone else_.  See ["Be
flexible"](https://github.com/sugarlabs/sugar-docs/blob/master/src/CODE_OF_CONDUCT.md#be-flexible)
and ["When you are unsure, ask for
help"](https://github.com/sugarlabs/sugar-docs/blob/master/src/CODE_OF_CONDUCT.md#when-you-are-unsure-ask-for-help)
in our Code of Conduct.

## Suggested Issues

For some ideas, there is a list of 'Suggested issues to work on'.
These may help you to get familiar with the project.  The more
you work on these issues, the more experienced you will be for
the project.  However, this is not a strict list.  You _should_
try and explore other issues as well.
