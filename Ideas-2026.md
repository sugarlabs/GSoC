# Google Summer of Code 2026 Project Ideas

* [Git Backend for Music Blocks Part 2](#git-backend-for-music-blocks-part-2)
* [GTK4 Transition Part 1 Fructose](#gtk4-transition-part-1-fructose)
* [GTK4 Transition Part 2 Sugar Shell](#gtk4-transition-part-2-sugar-shell)
* [GTK4 Transition Part 3 Wayland](#gtk4-transition-part-3-wayland)
* [Sugar Activity on Demand](#sugar-activity-on-demand)
* [AI Optimization](#ai-optimization)
* [AI Reflection in the Sugar Journal](#ai-reflection-in-the-sugar-journal)
* [Music Blocks Maintenance](#music-blocks-maintenance)
* [Music Blocks Performance](#music-blocks-performance)
* [Music Blocks Temperament](#music-blocks-temperament)
* [Music Blocks v4](#music-blocks-v4)
* [Sugarizer Connect the Dots Activity](#sugarizer-connect-the-dots-activity)
* [Speak-AI Multilingual Support](#speak-ai-multilingual-support)

------------

## Git Backend for Music Blocks Part 2

**Prerequisites**<br>
 - Experience with Git
 - Experience with JavaScript
 - Experience with Music Blocks

**Description**<br>

Portfolio creation, reflection, and collaboration are important parts
of the educational philosophy at Sugar Labs, and Git version control
is a great way to explore all these things.

Last summer (2025), Nikhil implemented the foundation for
transitioning the Music Blocks to a "git-like" version control
system. His work included both backend and frontend implementations.

The goals for this summer are:

* Smooth Transition from Planet: Fully transition existing Planet
  projects to the new Git backend, ensuring students retain access to
  their previous work.

* Educate Students on Git: Introduce guided tutorials and interactive
  features within Music Blocks to help students understand version
  control and Git concepts.

* Enhanced Collaboration & Reflection: Add features to encourage
  students to explore, fork, and contribute to peers' projects while
  reflecting on their own progress and learning journey.

References:
 - <https://github.com/benikk/GSoC-2025>

**Project Length**<br>

**350** hours

**Difficulty**<br>

**Hard**<br>

**Coding Mentors**<br>
[Nikhil Bhatt](https://github.com/benikk) [Walter Bender](https://github.com/walterbender/)<br>

**Assisting Mentors**<br>
[Devin Ulibarri](https://github.com/pikurasa/) [Sumit Srivastava](https://github.com/sum2it)<br>

-----------

## GTK4 Transition Part 1 Fructose

**Prerequisites**<br>
- Experience with C
- Experience with Python
- Experience with GTK
- Good understanding of Sugar Core architecture

**Description**<br>

GTK3, the toolkit Sugar has been built on for years, is approaching
end-of-life. Meanwhile, GTK4 brings us:

* Better performance with a modern rendering pipeline
* Wayland support: critical for modern display servers
* Improved accessibility out of the box
* Future-proofing: GTK4 is where GNOME and the Linux desktop ecosystem are headed

But here's the thing: migrating isn't just about updating version
numbers. It's about ensuring Sugar can run on today's hardware,
today's distros, and continue being relevant for the next generation
of learners.

Last summer (2025), Krish made [great
headway](https://www.sugarlabs.org/news/all/2026-1-11-how-to-gtk4) by
mirgating the Sugar toolkit. That will be the basis of a number of
projects this summer.

Part 1. Migrating the [Fructose](https://wiki.sugarlabs.org/go/Development_Team/Release/Modules) activity set

**Project Task Checklist**

**Steps to start**
1. Set up the environment
2. Pick an activity
3. Port the activity
4. Do extensive testing
5. Review with your mentors

**Project length**<br>
**350** hours

**Difficulty:**<br>
**High**

**Coding Mentors**<br>
[Krish Pandya](https://github.com/mostlykiguess) [Ibiam Chihurumnaya](https://github.com/chimosky/)<br>

**Assisting Mentors**<br>
[Walter Bender](https://github.com/walterbender/) [Juan Pablo Ugarte](https://github.com/xjuan)

-------------

## GTK4 Transition Part 2 Sugar Shell

**Prerequisites**<br>
- Experience with C
- Experience with Python
- Experience with GTK
- Good understanding of Sugar Core architecture

**Description**<br>

GTK3, the toolkit Sugar has been built on for years, is approaching
end-of-life. Meanwhile, GTK4 brings us:

* Better performance with a modern rendering pipeline
* Wayland support: critical for modern display servers
* Improved accessibility out of the box
* Future-proofing: GTK4 is where GNOME and the Linux desktop ecosystem are headed

But here's the thing: migrating isn't just about updating version
numbers. It's about ensuring Sugar can run on today's hardware,
today's distros, and continue being relevant for the next generation
of learners.

Last summer (2025), Krish made [great
headway](https://www.sugarlabs.org/news/all/2026-1-11-how-to-gtk4) by
mirgating the Sugar toolkit. That will be the basis of a number of
projects this summer.

Part 2. Migrating the Sugar Shell -- the desktop environment
itself. This includes:<br>- The frame (the iconic Sugar border)<br>-
The Journal<br>- The neighborhood view<br>- Clipboard and palette
systems.
There's an open [PR](https://github.com/sugarlabs/sugar/pull/1019) for this, so look at it and base your work off it.

**Project Task Checklist**

**Steps to start**
1. Set up the environment - Sugar Live Build.
2. Install sugar-toolkit-gtk4
3. Port and test Sugar shell
4. Do extensive testing
5. Review with your mentors

**Project length**<br>
**350** hours

**Difficulty:**<br>
**High**

**Coding Mentors**<br>
[Krish Pandya](https://github.com/mostlykiguess) [Ibiam Chihurumnaya](https://github.com/chimosky/)<br>

**Assisting Mentors**<br>
[Walter Bender](https://github.com/walterbender/) [Juan Pablo Ugarte](https://github.com/xjuan)

-------------

## GTK4 Transition Part 3 Wayland

**Prerequisites**<br>
- Experience with C
- Experience with Python
- Experience with GTK
- Good understanding of Sugar Core architecture

**Description**<br>

GTK3, the toolkit Sugar has been built on for years, is approaching
end-of-life. Meanwhile, GTK4 brings us:

* Better performance with a modern rendering pipeline
* Wayland support: critical for modern display servers
* Improved accessibility out of the box
* Future-proofing: GTK4 is where GNOME and the Linux desktop ecosystem are headed

But here's the thing: migrating isn't just about updating version
numbers. It's about ensuring Sugar can run on today's hardware,
today's distros, and continue being relevant for the next generation
of learners.

Last summer (2025), Krish made [great
headway](https://www.sugarlabs.org/news/all/2026-1-11-how-to-gtk4) by
mirgating the Sugar toolkit. That will be the basis of a number of
projects thuis summer:

Part 3. Full Wayland support. Wayland is the modern display server
protocol replacing X11. Wayland is not today’s problem, but today’s
GTK4 work is what makes it possible later. Some GTK4 work already
helps with Wayland (hello, Gtk.Popover!), but full integration
requires deep work in the shell and core systems.
There's an open [PR](https://github.com/sugarlabs/sugar/pull/1019) for this, so look at it and base your work off it.
This PR uses [Casilda](https://gitlab.gnome.org/jpu/casilda/-/tree/main?ref_type=heads) as a wayland compositor for Sugar.

**Project Task Checklist**

**Steps to start**
1. Set up the environment - Sugar Live Build.
2. Install sugar-toolkit-gtk4
3. Port and test Sugar shell
4. Do extensive testing
5. Review with your mentors

**Project length**<br>**350** hours

**Difficulty:**<br> High**

**Coding Mentors**<br> [Krish Pandya](https://github.com/mostlykiguess) [Ibiam Chihurumnaya](https://github.com/chimosky/)<br>

**Assisting Mentors**<br> [Walter Bender](https://github.com/walterbender/) [Juan Pablo Ugarte](https://github.com/xjuan)

-------------

## Sugar Activity on Demand

**Prerequisites**<br>
- Experience with Python
- Good understanding of AI model deployment
- Experience with Sugar activities


**Description**<br>

Sugar Activities are the primary vehicle through which our user engage
with Sugar and its various features, such as collaboration, the
Journal, etc. While we offer a wide variety of Activities, there are
undoubtedly gaps. While we provide support for Activity development
(including a pathway from Turtle Art through Pippy to Sugar Activity)
and add new Activities, we could do more to support the user
community.

AI-assisted code generation has turned a corner in terms of quality,
which suggests we should be asking this question: "Can we use LLMs to
generate Sugar Activities on demand?" In other words, have we reached
a threshold of quality in LLM-generated code where a student or
teacher could describe an Activity to a model and get a fully
functioning Sugar Activity in response?

You can take a look at the [Hello World](https://github.com/sugarlabs/hello-world) activity to see how a
basic Sugar activity looks and works.

This idea also requires that you have a working Sugar development environment,
[setup a development environment](https://github.com/sugarlabs/sugar/blob/master/docs/development-environment.md) will help you setup one.

**Project Length**<br>

**350** hours

**Difficulty**<br>

**Hard**<br>

**Coding Mentors**<br>
[Walter Bender](https://github.com/walterbender/) [Ibiam Chihurumnaya](https://github.com/chimosky/)<br>

-------------

## AI Optimization

**Prerequisites**<br>
- Experience with Python
- Good understanding of AI model deployment

**Description**<br>

We deploy AI in many parts of Sugar, for example, in the Reflection
Widget, the debugger, the Write Activity, etc. Last summer (2025), we
built Sugar-AI as a backend to support a variety of models and
interfaces. It is currently hosted on AWS and we have some credits
available to support the further development and testing of AI
services.

The goal of this project is to enable individuals and schools to use
their own models. This is both to support the use of the plethora of
emerging open models and to enable individuals and organizations that
have access to credits to utilize them. (Sugar Labs does not have the
resources to provide free AI hosting on a large scale, hence we want
to enable our users to leverage any resources that they have at hand.)

**Steps to start**
Familiarize yourself with Sugar-AI

**Project length**<br>**150** hours

**Difficulty:**<br> Medium**

**Coding Mentors**<br> [Krish Pandya](https://github.com/mostlykiguess) [Ibiam Chihurumnaya](https://github.com/chimosky/)<br>

**Assisting Mentors**<br> [Walter Bender](https://github.com/walterbender/) [Sumit Srivastava](https://github.com/sum2it) [Om Santosh Suneri](https://github.com/omsuneri)<br>

-------------

## AI Reflection in the Sugar Journal

**Prerequisites**<br>
 - Experience with Python
 - Experience with LLMs/Chatbots

**Description**<br>

While off-the-shelf Generative AI tools are great at helping a learner
to create, they offer little in regard to reflecting upon those
creations. But reflection is a critical (and too often overlooked)
part of the Constructionist learning pedagogy. With some prompting --
something LLMs are quite good at -- we can engage the learner in a
quality reflective practice. The dialog could occur when exiting any
Sugar activity as part of the journaling process. Rather than
just being presented with an empty form, the learner will be prompted
to talk about what they did, why they did it, what they learned and
what they might do next.

Last summer, Diwangshu built a [reflection
widget](https://www.sugarlabs.org/news/all/2025-09-01-gsoc-25-diwangshu-final-report)
for Music Blocks. This summer, we'd like to do the same for the Sugar
Journal so that AI-assisted reflection is part of the overall Sugar
experience.

Specifically, we would be working toward accomplishing the following:

- Research different approaches to reflective practice
- Train open source LLM to generate code to prompt the learn with a multitude of these approaches to reflection
- Develop FastApi endpoints to deploy the model.
- Deploy this model in the Sugar Journal to be triggered whenever a project is paused or saved

**Project Length**<br>

**350** hours

**Difficulty**<br>

**Hard**<br>

**Coding Mentors**<br>
[Walter Bender](https://github.com/walterbender/) [Ibiam Chihurumnaya](https://github.com/chimosky/)<br>

**Assisting Mentors**<br>
[Diwangshu Kakoty](https://github.com/Commanderk3)
[Aman Naik](https://github.com/amannaik247)

-------------

## Music Blocks Maintenance

**Prerequisites**
* Proficiency in **JavaScript**
* Proficiency with CI/CD workflows
* Familiarity with Music Blocks

**Description**<br>

While we are anticipating the arrival of Music Blocks v4 this summer,
we still need to maintain Music Blocks v3. This is largely a matter of
ensuring we have test coverage and we are keeping packages up to date.

This project is both to bring to completion the test suite that Om
Santosh began last year (2025). It is also to review the packages used
by Music Blocks and ensure that, whereever possible, the latest
packages are being used. (Package dependency is a bit of a nightmere
in Music Blocks.) The latter will require some updates to various
subsections -- for example, the latest JQuery breaks the search
functionality.

**Project Length**<br>

**150** hours

**Difficulty**<br>

**Medium**<br>

**Coding Mentors**<br>
[Walter Bender](https://github.com/walterbender/) [Om Santosh Suneri](https://github.com/omsuneri)<br>

-------------

## Music Blocks Performance

**Prerequisites**
* Proficiency in **JavaScript**
* Proficiency with CI/CD workflows
* Familiarity with Music Blocks

**Description**<br>

While we are anticipating the arrival of Music Blocks v4 this summer,
we still have a large Music Blocks v3 community to support. In
particular three aspects of performance are impacting our users: (1)
the time needed to take to load the page; (2) lag in performance for
complex projects; and (3) memory usage, especially as it impacts
operations such as recursion.

While we have done some incremental work, such as deferring the
loading of some package loading, a hollistic approach is
needed. Google PageSpeed is a great tool to analysizing some aspects
of performance and provides insights into where we can make
improvements.

This project is try to address the performance issues.

**Project Length**<br>

**150** hours

**Difficulty**<br>

**Medium**<br>

**Coding Mentors**<br>
[Walter Bender](https://github.com/walterbender/) [Om Santosh Suneri](https://github.com/omsuneri)<br>

-------------

## Music Blocks Temperament

**Prerequisites**
* Proficiency in **JavaScript**
* Familiarity with Music Blocks
* Familiarity with temperament and mode in music

**Description**

Temperament and mode in music are seemingly advanced topics in music
theory, but we have an opportunity in Music Blocks to engage in these
concepts at the start of a student's musical education, leading a
fuller, more musically rich experience.

A simple, but compelling example is the [Musical Galton
Box](https://github.com/sugarlabs/musicblocks/blob/master/examples/Galton-music.html),
which drives home the power of mode using a random sequence of note
progressions.

The [Temperament
Widget](https://github.com/sugarlabs/musicblocks/tree/master/Docs/guide#412-changing-temperament)
makes it possible to change and create different tuning systems within
Music Blocks. While most music software geared towards beginners is
restricted to 12 EDO (equal temperament or "piano tuning"), Music
Blocks allows almost unlimited tuning options.

The problem is that when Music Blocks was first written, it did not
accommodate this full range of temperaments. The current
implementation still has some artificts that cause some tuning choices
to fail under some conditions, such as generating chords or pitch
stepping.

With Music Blocks v4, we built a version of "music utils" that is more
robust regarding temperament. The goal of this project is to backport
this code to Music Blocks v3 so that we have the full expression of
temperament available.

**Project Length**<br>

**150** hours

**Difficulty**<br>

**Medium**<br>

**Coding Mentors**<br>
[Walter Bender](https://github.com/walterbender/) [Devin Ulibarri](https://github.com/pikurasa/)<br>

-------------

## Music Blocks v4

**Prerequisites**

* Proficiency in **TypeScript**
* Proficiency in **JavaScript DOM API**
* Experience with **React Functional Components and Hooks**

**Description**

PLACEHOLDER

**Project Length:** **350** hours

**Difficulty:** **Hard**

**Tech Stack**

TypeScript 5, React 18, Sass, Storybook, Vitest, Vite

**Mentors**<br/>
[Anindya Kundu](https://github.com/meganindya/)

**Assisting Mentors**<br/>
[Justin Charles](https://github.com/justin212407)<br/>
[Safwan Sayeed](https://github.com/sa-fw-an)

-------------

## Sugarizer Connect the Dots Activity

**Prerequisites**

* Experience with Sugarizer platform and existing activities
* Proficiency with JavaScript/HTML5 in VanillaJS or with Vue.js
* Experience with Sugarizer activity development
* Understanding of Sugarizer Core architecture

**Project length**<br>
**175** hours

**Difficulty:** &#9733; &#9733; &#9734; (medium)

**Description**<br>
Create a new activity inspired by the classic "Connect the Dots" game.
This activity will combine several modes of interaction to engage users in creative drawing, learning shapes, and strategic gameplay.

Three distinct modes will be implemented:

* ***Draw mode***: A very basic mode for young users. Let users create freely like in Gridpaint activity - inspired by [pok pok](https://playpokpok.com/res/img/video/connect-the-dots.mp4). In shared mode, all users are drawing together on the same board like in Paint activity.
* ***Number mode***: The user chooses a template with numbered dots and has to connect them in the correct order - inspired by [connect-the-dots-activity](https://github.com/sugarlabs/connect-the-dots-activity/tree/master). In shared mode, all users compete to finish the template first like in Maze activity. It should also be possible to create and share new templates like in Calligra or Tangram activities.
* ***Game mode***: Strategic mode to conquer territory, each users should fill a maximum part of the screen starting from a little square in a border - inspired by [paper io](https://github.com/sugarlabs/connect-the-dots-activity/tree/master). If the user is alone, an AI opponent will try to beat him. In shared mode, all users compete to conquer the most territory.

**First steps to starts**<br>

* Complete the [Sugarizer Vanilla Javascript activity development tutorial](https://github.com/llaske/sugarizer/blob/dev/docs/tutorial/VanillaJS/tutorial.md) or the [Sugarizer Vue.js activity development tutorial](https://github.com/llaske/sugarizer/blob/dev/docs/tutorial/VueJS/tutorial.md). Publish on [Discord](https://sugarizer.org/discord) a video of the Pawn activity running.
* Think about the different modes features and how to implement them
* Create a mockup of the activity UI
* Develop a running prototype of some features

**Mentor**<br>
[Lionel Laské](https://github.com/llaske/)


-------------

## Speak-AI Multilingual Support

**Prerequisites**<br>
 - Experience with Python
 - Experience with Text-to-Speech (TTS) systems

**Description**<br>

The [Speak-AI activity](https://github.com/sugarlabs/speak-ai) is an enhanced version of the classic Speak activity that uses Kokoro TTS to provide more natural-sounding voices. However, current language support is limited.

This project aims to significantly expand Speak-AI's multilingual capabilities by adding support for the most commonly used languages, with a strong emphasis on achieving high-quality, natural pronunciation. Getting pronunciation right is the top priority, as accurate and natural-sounding speech is essential for language learning and accessibility.

**Project Goals:**

1. **Multilingual TTS Support**: Here are some of the languages that we want to add support for:
   - Spanish
   - Portuguese (Brazilian)
   - Hindi
   - French
   - Arabic
   - Swahili
   - Quechua/Aymara
   - Chinese (Mandarin)
   - Kinyarwanda
   - Gurani

2. **Pronunciation Quality**: Prioritize accurate pronunciation through:
   - Extending or replacing the current G2P (Grapheme-to-Phoneme) layer to better support non-Latin scripts (Arabic, Devanagari for Hindi, Chinese characters, etc.)
   - Evaluating and potentially integrating alternative open-source TTS models that may provide better multilingual support
   - Creating a language-specific testing and evaluation framework

3. **Performance Optimization**: Improve the efficiency of the TTS system through:
   - Investigating ONNX runtime integration for faster inference
   - Optimizing TTS model loading and memory usage for resource-constrained devices
   - Implementing caching strategies for commonly used phrases

4. **Community Validation**: Work with native speakers from the Sugar Labs community to:
   - Test and validate pronunciation quality for each added language
   - Gather feedback
   - Iterate on improvements based on community input

**Technical Approach:**

The project will require research into various TTS backends and G2P systems to determine the best approach for each language family. Special attention must be paid to languages with complex phonological rules.

**Steps to start:**
1. Familiarize yourself with the current Speak-AI implementation
2. Research TTS and G2P models for target languages
3. Implement new TTS models / G2P systems within Speak-AI

**Project length**<br>
**90** hours

**Project Size:**<br>
**Small**

**Coding Mentors**<br>
[Mebin Thattil](https://github.com/mebinthattil) [Ibiam Chihurumnaya](https://github.com/chimosky/)<br>

**Assisting Mentors**<br>
[Walter Bender](https://github.com/walterbender/) [Devin Ulibarri](https://github.com/pikurasa/)<br>

-------------

# Administrative Notes

Above are a list of ideas we've planned for GSoC 2026 projects.
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

## Assisting Mentors

For each idea, we may have offers from mentors _who do not code_ but
are willing to assist students in various other ways, such as
gathering requirements, visual design, testing, and deployment; these
are shown as an _assisting mentor_.

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
