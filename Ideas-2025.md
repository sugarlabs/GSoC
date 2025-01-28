# GSoC 2025 Ideas

## Project Ideas
* [Color sensor for Music Blocks for photos and real-time video](#Color-sensor-for-Music-Blocks-for-photos-and-real-time-video)
* [Interactive Chatbot and Debugger for Music Blocks](#Interactive-Chatbot-and-Debugger-for-Music-Blocks)
* [Add AI-assistant to the Write Activity](#Add-an-AI-assistant-to-the-Write-Activity)
* [Refactor the Infoslicer Activity to generate plain-language summaries](#Refactor-the-Infoslicer-Activity-to-generate-plain-language-summaries)
* [Refactor the chatbot in the Speak Activity to use gen-AI](#Refactor-the-chatbot-in-the-Speak-Activity-to-use-gen-AI)
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
