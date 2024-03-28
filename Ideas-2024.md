# GSoC 2024 Ideas

## Project Ideas
* [Refactor the chatbot in the Speak Activity to use AI](#Refactor-the-chatbot-in-the-Speak-Activity-to-use-AI)
* [Add an AI chatbot to the Chat Activity](#Add-an-AI-chatbot-to-the-Chat-Activity)
* [Add AI-assistant to the Pippy Activity](#Add-an-AI-assistant-to-the-Pippy-Activity)
* [Add AI-assistant to the Write Activity](#Add-an-AI-assistant-to-the-Write-Activity)
* [Refactor the Infoslicer Activity to generate plain-language summaries](#Refactor-the-Infoslicer-Activity-to-generate-plain-language-summaries)
* [Add real-time collaboration to Music Blocks](#Add-real-time-collaboration-to-Music-Blocks)
* [Musical ideation through Generative AI](#musical-ideation-through-generative-ai)
* [Make your own Lesson Plan for Music Blocks](#make-your-own-lesson-plan-for-music-blocks)
* [Musical creation and transcription assistance via generative AI](#musical-creation-and-transcription-assistance-via-generative-ai)
* [Music Blocks 4 Project Builder Integration](#music-blocks-4-project-builder-integration)
* [Music Blocks 4 Programming Framework Enhancements](#music-blocks-4-programming-framework-enhancements)
* [Maintain/port 12 Sugar activities to FlatPak](#maintain-port-12-sugar-activities-to-flatpak)
* [Sugarizer VueJS App](#sugarizer-vuejs-app)
* [Sugarizer 3D Volume activity](#sugarizer-3d-volume-activity)
* [Sugar on Raspberry Pi](#sugar-on-raspberry-pi)
* [Math Games](#math-games)
* [GTK4 exploration](#gtk4-exploration)

[Administrative notes](#administrative-notes)

------------

## Refactor the chatbot in the Speak Activity to use AI

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
learner's experience with writing -- a tool for both self express and
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

## Add an AI chatbot to the Chat Activity

**Prerequisites**<br>
 - Experience with Python
 - Experience with Sugar activities
 - Experience with LLMs/Chatbots

**Description**<br>

The [Chat Activity](https://github.com/sugarlabs/chat) is an interactive chat program. The goal of this
project is to add a chatbot that can be engaged as part of the
conversation. The chatbot must be tuned to match the age of our
learners, which skews younger than the typical chatbots, so some
tuning may be necessary.

**Project Length**<br>

**175** hours

**Difficulty**<br>

**Medium**

**Coding Mentors**<br>
[Ibiam Chihurumnaya](https://github.com/chimosky/)

**Assisting Mentors**<br>
[Walter Bender](https://github.com/walterbender/)

------------

## Add an AI-assistant to the Pippy Activity

**Prerequisites**<br>
 - Experience with Python
 - Experience with Sugar activities
 - Experience with LLMs/Chatbots

**Description**<br>

[Pippy](https://github.com/sugarlabs/Pippy) is the Sugar "learn to program in Python" activity. It comes
with lots of examples and has sufficient scaffolding such that a
learner could modify an existing Sugar activity or write a new
one. The goal of this project is to add "co-pilot"-like assistance to
Pippy. A learner should be able to ask the AI to provide example
Python code to help them navigate the language and explore
possibilities in a more open way than the collection of Pippy examples
affords. (The Pippy examples are geared towards activity development,
which is largely how to navigate the basics of the Sugar toolkit and
some GTK basics. This would be much broader in scope.)

The challenge, beyond the plumbing, is to design and implement a
sensible workflow such that the AI is helpful but not in the way.

**Project Length**<br>

**350** hours

**Difficulty**<br>

**High**

**Coding Mentors**<br>
[Ibiam Chihurumnaya](https://github.com/chimosky/)

**Assisting Mentors**<br>
[Walter Bender](https://github.com/walterbender/)

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

**Assisting Mentors**<br>
[Ibiam Chihurumnaya](https://github.com/chimosky/)

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

**Assisting Mentors**<br>
[Ibiam Chihurumnaya](https://github.com/chimosky/)

------------

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

Specifically, we are intereted in these games:

* [Lewis Carroll's Game of Logic](https://www.cut-the-knot.org/LewisCarroll/LCGame.shtml)
* [Pascal's Triangle](http://www.cut-the-knot.org/Curriculum/Algebra/DotPatterns.shtml)
* [Nim](http://www.cut-the-knot.org/nim_st.shtml)
* [The Candy Game](http://www.cut-the-knot.org/Curriculum/Algebra/IntergerIterationsOnACircle.shtml)
* [Number Guessing Game](http://www.cut-the-knot.org/Curriculum/Algebra/Cards.shtml)
* [Latin Squares](http://www.cut-the-knot.org/Curriculum/Algebra/Latin.shtml)
* [3 Utilities Puzzle](http://www.cut-the-knot.org/do_you_know/3Utilities.shtml)
* [Goat Cabbage Wolf](http://www.cut-the-knot.org/ctk/GoatCabbageWolf.shtml)

In the proposal, please mention _some_ specific ideas for games.

**Project Length**<br>

**350** hours

**Difficulty**<br>

**Medium**

**Coding Mentors**<br>
[Ibiam Chihurumnaya](https://github.com/chimosky/)

**Assisting Mentors**<br>
[Walter Bender](https://github.com/walterbender/)

------------

# Maintain Port 12 Sugar Activities to Flatpak

**Prerequisites**<br>
 - Experience with Python
 - Strong experience with
   [Sugar Desktop](https://github.com/sugarlabs/sugar) and [Activities](https://github.com/sugarlabs/sugar-docs/blob/master/src/contributing.md#modifying-activities)

**Description**<br>

We have a number of Sugar Activities bundled with
[Flatpak](https://flatpak.org/) as a way to reach a broader audience
within the Linux community. We'd like to both keep those activities up
to date and also port more.

We'd love to add more Sugar activities to the Flatpak collection, a
search for sugar on [flathub](https://flathub.org/apps/search?q=sugar)
shows we have about 27 activities on flathub and we'd like to increase
that number.

We have a
[guide](https://github.com/tchx84/sugarapp/blob/master/flatpak-guide.md)
that shows you how to port Sugar activities to Flatpak, you'll also
need to
[submit](https://docs.flathub.org/docs/for-app-authors/submission/)
the activity to flatpak.

**Project Length**<br>

**350** hours

**Difficulty**<br>

**Medium**

**Coding Mentors**<br>
[Martin Abente](https://github.com/tchx84/)
[Ibiam Chihurumnaya](https://github.com/chimosky/)
[Walter Bender](https://github.com/walterbender/)

------------

# Add real-time collaboration to Music Blocks

**Prerequisites**<br>
 - Experience with JavaScript
 
**Description**<br>

The Python version of Turtle Blocks has a collaboration mode, where
the learner can share stacks of code and, in real time, share
graphical output. This project is to add similar functionality to
Music Blocks. Following the pattern of Turtle Blocks collaboration is
pretty straight-forward. What makes this project difficult is that
Music Blocks will require a higher degree of synchronization.

Specifically, we would be working toward accomplishing the following:

* Server-side data storage and proxying
* API to syncrhonize Music Blocks projects across browsers
* Features to perform projects in sync, in real time, with low latency

**Project Length**<br>

**350** hours

**Difficulty**<br>

**High**

**Coding Mentors**<br>
[Walter Bender](https://github.com/walterbender/)
[Devin Ulibarri](https://github.com/pikurasa/)

------------

# Musical ideation through Generative AI

**Prerequisites**<br>
 - Experience with JavaScript
 - Experience with musical composition
 - Experience with large language models (LLMs)

**Description**<br>

We would like to deploy generative AI in support of musical
composition. The basic idea is to use AI to generate possible
modifications of a phrase (or phrases) generated by the user. In other
words, the user would start the composition and the AI would then
present different possibilities for enriching the composition to which
the user would react and further enhance.

Specifically, we would be working toward accomplishing the following:

* Tune open source LLM to create the ideal output for beginners, and
  for learning
* Create an API that translates LLM musical data to Music Blocks data,
  so that the learner has something to work from
* Create a in-app framework for evaluating the AI output, so that the
  user has several plausible choices and, if they so choose, grade the
  choices to be used for further improvement

**Project Length**<br>

**350** hours

**Difficulty**<br>

**High**

**Coding Mentors**<br>
[Walter Bender](https://github.com/walterbender/)
[Devin Ulibarri](https://github.com/pikurasa/)

-------------

# Make your own Lesson Plan for Music Blocks

**Prerequisites**<br>
 - Experience with JavaScript
 - Experience with large language models (LLMs)

**Description**<br>

We would like to deploy generative AI in support of converting Music
Blocks projects into lesson plans. An LLM would be used to convert the
musical and computational ideas expressed in a project to
auto-generate the first draft of lesson plan.

Some examples of lesson plans can be found
[here](https://drive.google.com/drive/folders/17dWeTTlA4Sv-KdQ4__9d2W6H0_3cu8EQ?usp=sharing)
and [here](https://mapflc.com/lesson-plans/).

Specifically, we would be working toward accomplishing the following:

* Create scripts that can parse Music Blocks JSON data into data analyzable by LLM
* Input existing lesson plan data into LLM
* Tune LLM to create useful lesson plans

**Project Length**<br>

**175** hours

**Difficulty**<br>

**Medium**

**Coding Mentors**<br>
[Walter Bender](https://github.com/walterbender/)
[Devin Ulibarri](https://github.com/pikurasa/)

-------------

# Musical creation and transcription assistance via generative AI

**Prerequisites**<br>
 - Experience with JavaScript
 - Experience with musical theory/composition
 - Experience with large language models (LLMs)

**Description**<br>

Many people have musical ideas, but struggle to articulate them.
Generative AI has promise to help people find a way to transcribe
their musical ideas. The goal would be to create a generative AI tool
that assists users such that they could sing (or perform on an
instrument) their idea -- as well as speak or type instructions
without music -- and be presented with some possible transcriptions of
their idea, output as Music Blocks code so that it may be further
refined and manipulated.

Specifically, we would be working toward accomplishing the following:

* Create an in-app interface for a user to record or upload an audio
  file of their musical sample
* Create a server-side LLM service that analyzes the sound file and
  outputs into Music Blocks data
* Create an API to communicate data between the server and the client

**Project Length**<br>

**350** hours

**Difficulty**<br>

**High**

**Coding Mentors**<br>
[Walter Bender](https://github.com/walterbender/)
[Devin Ulibarri](https://github.com/pikurasa/)

-------------

# Music Blocks 4 Project Builder Integration

**Difficulty:** &#9733; &#9733; &#9733; &#9733; &#9734;

**Project Length:** **350** hours

**Prerequisites**

* Strong experience with TypeScript 4
* Strong experience with JavaScript DOM API, Canvas API
* Strong experience with React Functional Components and Hooks (React 18)
* Understanding of the prototype
[**Project Builder Framework**](https://github.com/sugarlabs/musicblocks-v4-builder-framework)

**Description**

The objective is to complete the _Project Builder Framework_ for _Music Blocks_ (_v4_).
The _Project Builder_ is the graphical blocks manager module which can be used to
create _Music Blocks_ programs. We started working on in last year, and the goal
is to complete and integrate it with the application.

General objectives are:

* Create a design document for the WIP
* Complete the incomplete pieces
* Integrate it in `musicblocks-v4`
* Create a wrapper component _Project Builder_ (_builder_) in `musicblocks-v4`
* Add utilities to the wrapper component so that the _Project Builder_ component
can communicate with the _Specification_ and _Syntax Tree_ APIs of the
[**Programming Framework**](https://github.com/sugarlabs/musicblocks-v4-lib)
* Create a _Palette_ (_palette_) component

**Mentors**

[Anindya Kundu](https://github.com/meganindya/)

**Assisting Mentors**

[Walter Bender](https://github.com/walterbender/)

------------

# Music Blocks 4 Programming Framework Enhancements

**Difficulty:** &#9733; &#9733; &#9733; &#9733; &#9734;

**Project Length:** **350** hours

**Prerequisites**

* Strong experience with TypeScript 4
* Experience of writing tests using Jest
* Good understanding of the JavaScript Event Loop

**Description**

There are three parts to this project:

* Improvements and optimizations to the Program Syntax Framework
* Enhancements and performance optimizations to the Execution Engine
* Addition of Telemetry and Debugging support

We need to revisit some design considerations made while initially building the
Program Syntax Framework. This framework is responsible for defining the business
logic and rules for units of a program's syntax (literals, expressions, statements,
blocks, functions) and maintaining the Syntax Tree that represents a program.
There's scope for some work to be done in it's refinement.

The Execution Engine handles the runtime behavior of a program. Currently, it is
in a very rudimentary state and is a work-in-progress. The goal is to build a low
overhead interpreter that supports pseudo real-time and concurrency. Of course,
JavaScript is single-threaded and the JavaScript engine on the browser doesn't
support concurrency. So, we'll have to mock a closer behavior with Events.

It is desirable to be able to monitor the runtime states of an executing program.
We want to collect execution information, messages, errors while a program is
executing, and also control the execution itself. The goal is to add support for
the said.

The framework code is contained in
[github.com/sugarlabs/musicblocks-v4-lib](https://github.com/sugarlabs/musicblocks-v4-lib).

**Mentors**

[Anindya Kundu](https://github.com/meganindya/)

**Assisting Mentors**

[Walter Bender](https://github.com/walterbender/)

-------------

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

**Coding Mentors**<br>
[Ibiam Chihurumnaya](https://github.com/chimosky/)

-------------

## Sugar on Raspberry Pi

**Prerequisites**<br>

**Project length**<br>
**175** hours

**Difficulty**<br>

**Easy**

**Description**<br>

Sugar runs on RPi and we should take advantage of that to reach the
Maker community. This project involves ensuring that Sugar runs w/o
any issues; that it is packaged in a way that is suiable for inclusion
on the [Raspberry Pi operating system
images](https://www.raspberrypi.com/software/operating-systems/).
Also, there are any number of Sugar activities that could be enhanced
by knowing some of the details of the RPi, such as Turtle Blocks,
Measure, and Pippy, all of which could be tailored to take advantage
of the sensors available on RPi.

**Mentor**<br>
Walter Bender

**Backup mentor**<br>
Alex Perez


-------------

# Sugarizer VueJS App

![](assets/sugarizer_vue.png)

**Prerequisites**<br>
- Experience with JavaScript/HTML5 development
- Experience with Vue.js framework development
- Good understanding of Sugarizer Core architecture

**Project length**<br>
**175** hours

**Difficulty:** &#9733; &#9733; &#9734; (medium)

**Description**<br>

Sugarizer Core UI rely on EnyoJS, a deprecated frameworks initially
developed for WebOS.  <br> Last year a GSoC project built first
screens of Sugarizer Core using VueJS.  <br> The idea of this new
project is to finalize the implementation to have a really working
Sugarizer VueJS App. <br>

**Tasks**<br> 

- Implement remaining screens: 
  - Neighborhood view 
  - Journal View 
- Implement the tutorial
- Port the Electron part to be able to work with the new implementation
- Build Sugarizer for Android and test the new implementation to ensure it works


**First steps to starts**<br>

- Complete both the [Sugarizer Vanilla Javascript activity development tutorial](https://github.com/llaske/sugarizer/blob/dev/docs/tutorial/VanillaJS/tutorial.md) and the [Sugarizer Vue.js activity development tutorial](https://github.com/llaske/sugarizer/blob/dev/docs/tutorial/VueJS/tutorial.md).
- Install the current Sugarizer Vue.js implementation from branch  [feature/v2](https://github.com/llaske/sugarizer/tree/feature/v2):
    - See README to understand how to install and run it 
    - Test it from file:// 
    - Test if from a local Sugarizer Server 
    - Identify differences with the legacy Sugarizer implementation 
    - Check for bug or for unexpected behavior 
    - Suggest improvement or fix 
- Install and test [Sugarizer APK Builder](https://github.com/llaske/sugarizer-apkbuilder) to generate Sugarizer for Android.

**Mentor**<br>
[Lionel Laské](https://github.com/llaske/)

-------------

# Sugarizer 3D Volume activity

![](assets/3dvolume.png)

**Prerequisites**<br>
- Experience with JavaScript/HTML5 development
- Experience with Vue.js framework development
- Understanding of 3D graphics and experience with a 3D engine

**Project length**<br>
**175** hours

**Difficulty:** &#9733; &#9733; &#9734; (medium)

**Description**<br>

The objective of this project is to create a new Sugarizer activity to
explore volume using dices. <br>

Features: 
* Display volumes 
* Zoom in/out button (or touch) 
* Rotate board button (or touch) 
* Choose color for facets and text (default is buddy colors) 
* Choose volume size : 4, 6, 8, 10, 12, 20 (default is 6) 
* Choose volume type : semi-transparent, without number (default), with number 
* Choose board background: neutral (default), green playmat, red playmat, wood – friction depend of the background 
* Add a volume on board 
* Remove a volume on board 
* Shake board: clicking on the button or shaking the device if an accelerator is included 
* Share the activity: every users connected can do everything on board 
* Display total: for volumes with number, when the app stop shaking 

Inspirations:
* Regular volumes (10 is irregular) 

  - 4 Tetrahedron https://www.cut-the-knot.org/Curriculum/Geometry/Polyhedra/tetrahedron.shtml  
  - 6 Cube https://www.cut-the-knot.org/Curriculum/Geometry/Polyhedra/cube.shtml  
  - 8 Octahedron https://www.cut-the-knot.org/Curriculum/Geometry/Polyhedra/octahedron.shtml  
  - 12 Dodecahedron https://www.cut-the-knot.org/Curriculum/Geometry/Polyhedra/dodecahedron.shtml  
  - 20 Icosahedron https://www.cut-the-knot.org/Curriculum/Geometry/Polyhedra/icosahedron.shtml  

* Dice simulators 

  - https://dice-simulator.com/  
  - https://heckadecimal.com/  

* Existing Sugarizer activities 

  - Physics JS because it allows handling of 2D objects in a board and use device accelerator 
  - Fraction because it allows to customize the board 
  - Planets because it's an activity to handle planets in 3D  

**First steps to starts**<br>

* Complete both the [Sugarizer Vanilla Javascript activity development tutorial](https://github.com/llaske/sugarizer/blob/dev/docs/tutorial/VanillaJS/tutorial.md) and the [Sugarizer Vue.js activity development tutorial](https://github.com/llaske/sugarizer/blob/dev/docs/tutorial/VueJS/tutorial.md).
* Choose a JS 3D Framework: it should be open source, lightweight and be compatible with all Sugarizer platforms 
* Try to create a Sugarizer activity displaying 3D objects
* Create a mockup of the activity

**Mentor**<br>
[Lionel Laské](https://github.com/llaske/)


-------------

# Administrative notes

Above are a list of ideas we've planned for GSoC 2024 projects.
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
