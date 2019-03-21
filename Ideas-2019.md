# GSoC 2019 Ideas
A list of ideas we've planned for GSoC 2019 projects.
If you have any ideas which can be useful to us, but are not in the
list, we'd love to hear from you.  You need not be a potential
student or a mentor to suggest ideas.

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
For each idea, we may have offers from mentors _who do not code_
willing to assist students in various other ways, such as gathering
requirements, visual design, testing, and deployment; these are shown
as an _assisting mentor_.

The only requirement for an _assisting mentor_ is _knowledge of the
project_.

Mentors for a project will be assigned after proposals are received.

## Everyone Else
Everyone else in Sugar Labs may also be involved with these projects, through mailing lists, Wiki, and GitHub.

The difference between a _mentor_ and _everyone else_, is that a
_mentor_ is obliged to respond when a student has a question, even if
the answer is "I don't know."

When a _mentor_ receives a question for which the best forum is
_everyone else_, then they are to respectively redirect the student to
ask _everyone else_.  See
[Be flexible](https://github.com/sugarlabs/sugar-docs/blob/master/src/CODE_OF_CONDUCT.md#be-flexible)
and
[When you are unsure, ask for help](https://github.com/sugarlabs/sugar-docs/blob/master/src/CODE_OF_CONDUCT.md#when-you-are-unsure-ask-for-help)
in our Code of Conduct.

## Suggested Issues

For some ideas, there is a list of 'Suggested issues to work on'.
These will help you to get familiar with the project.  The more you
work on these issues, the more experienced you will be for the
project.  However, this is not a strict list.  You _should_ try and
explore other issues as well.

------------

## Port Sugar and core activities to Python 3
**Prerequisites**<br>
 - Experience with Python
 - Experience with porting telepathy bindings
 - Strong experience with
   [Sugar Desktop](https://github.com/sugarlabs/sugar) and activities

**Description**<br>
Sugar runs on Python 2. Support for Python 2 is being withdrawn fast
and we need to move to Python 3. The work was started in GSoC 2018,
see [link](https://wiki.sugarlabs.org/go/Python_2to3), and needs to be
finished and released. See GitHub Project [Port to Python 3 via
six](https://github.com/orgs/sugarlabs/projects/1) for open issues and
pull requests.

The telepathy library does not have its bindings for Python 3, and
porting Telepathy to its PyGObject binding is a prerequisite for the
Port to Python 3 Project, see GitHub Project [Port to
TelepathyGLib](https://github.com/orgs/sugarlabs/projects/4).

**Project Task Checklist**<br>
_(in chronological order)_
 - Port all Telepathy bindings to TelepathyGLib, see [Port to
   TelepathyGLib](https://github.com/orgs/sugarlabs/projects/4).
 - Make activitychooser window modal and remove its dependency from
   toolkit to jarabe, see [sugar/#815](https://github.com/sugarlabs/sugar/issues/815)
 - Release gwebsockets for Python 3, see [gwebsockets/#2](https://github.com/sugarlabs/gwebsockets/issues)
 - Continue porting sugar-toolkit-gtk3 to six, see [
   sugar-toolkit-gtk3/#383](https://github.com/sugarlabs/sugar-toolkit-gtk3/pull/383)
 - Release sugar-toolkit-gtk3 which is compatible with both Python 2
   and 3
 - Port Sugar Desktop to Python 3, see [sugar/#805](https://github.com/sugarlabs/sugar/pull/805)
 - Port all fructose activities to Python 3

**Coding Mentors**<br>
[Rahul Bothra](https://github.com/pro-panda) and
[James Cameron](https://github.com/quozl)

**Assisting Mentors**<br>
None.

------------

## Improve and maintain 25 Sugar activities
**Prerequisites**<br>
 - Experience with Python
 - Strong experience with Sugar activities
 - Experience with maintaining activities on ASLO

**Description**<br>
Sugar has a lot of activities, with 250+ on GitHub, and more
elsewhere. These have scope for improvement; bugs,
features, updated human translations, and release.  This project will involve
working on at least 25 activities to improve them. Students can choose
activities on their own, and are encouraged to select activities which
are either a part of Fructose or have a strong pedagogical value. To
understand how to locate and work on activities, see our guide to
[Modifying
Activities](https://github.com/sugarlabs/sugar-docs/blob/master/src/contributing.md#modifying-activities)

In their proposal, students should mention some of the issues they will
work on.  Any new feature suggestion should be discussed on GitHub
Issues before being added to a proposal.

Since there are a lot of activities to work on, **more than one instance
of this project may be selected**.

**Suggested Issues to work on:**<br>
 - write-activity: [#28 Port to sugar3.speech](https://github.com/sugarlabs/write-activity/issues/28)
 - jukebox-activity: [#22 Add collaboration for sharing playlist items](https://github.com/sugarlabs/jukebox-activity/issues/22)
 - jukebox-activity: [#23 Enable visualisations in the playbin element for audio content](https://github.com/sugarlabs/jukebox-activity/issues/23)
 - infoslicer: [#23 Traceback, motion_notify](https://github.com/sugarlabs/infoslicer/issues/23)
 - iq-activity: [#10 Port to Latest Sugargame](https://github.com/sugarlabs/iq-activity/issues/10)
 - GTranslator: [#8 Unconnected forks to be merged](https://github.com/sugarlabs/GTranslator/issues/8)
 - maze-activity: [#16 Add holes](https://github.com/sugarlabs/maze-activity/issues/16)
 - flappy-birds-activity: [#16 Suggested changes](https://github.com/sugarlabs/flappy-birds-activity/issues/16)
 - bichos-activity: [#9 Delete repository](https://github.com/sugarlabs/bichos-activity/issues/9)

Other issues will have been raised since.

Suggesting or adding features, fixing bugs, or releasing activities
will help you to gain experience

**Coding Mentors**<br>
[Rahul Bothra](https://github.com/pro-panda),
[James Cameron](https://github.com/quozl) and
[Ibiam Chihurumnaya](https://github.com/chimosky).

**Assisting Mentors**<br>
None.

------------

## Create a new set of activities
**Prerequisites**<br>
 - Ability to write in Python programming language (for Sugar activities), or
 - Ability to write in JavaScript programming language (for Sugarizer activities).

**Description**<br>
Sugar has a lot of activities (250+ on GitHub, and more
elsewhere). To understand how to locate and work on activities, see
our guide to [Modifying Activities](https://github.com/sugarlabs/sugar-docs/blob/master/src/contributing.md#modifying-activities).

Sugarizer has a few activities.

This project expects you to think of what new activities can be created.
The activity or set of activities should add a new learning experience
for the user, and must be large enough for the three months work for GSoC.

Some ideas (but not limited to) are [Machine Learning Teaching](https://github.com/sugarlabs/GSoC/issues/16),
[Pronounciation Checker](https://github.com/sugarlabs/GSoC/issues/12),
[Jupyter Notebook](https://github.com/sugarlabs/GSoC/issues/13),
[Scratch](https://github.com/sugarlabs/GSoC/issues/5), or Science themed activities.

See https://www.tandfonline.com/doi/pdf/10.1080/15391523.2017.1388200?needAccess=true
to understand some user experiences and expectations.

In the proposal, students must mention the features
in their proposed activities, and may include preliminary designs
as well.

**Project Task Checklist:**<br>
 - [ ] Create the activity; ensure that the code is modular, commented,
   and does not use any deprecated modules,
 - [ ] Test the activity; put it out for the community to test and
   implement feature requests or patches for bugs reported,
 - [ ] Release activity for use by primary school children.

**Suggested Issues to work on:**<br>
 - Fixing issues in activities
 - Adding new features in activities
 - Creating new activities

**Coding Mentors**<br>

 - for Python activities, [Rahul Bothra](https://github.com/pro-panda), [James Cameron](https://github.com/quozl) and [Ibiam Chihurumnaya](https://github.com/chimosky),
 - for JavaScript activities, [Lionel Laské](https://github.com/llaske) (JavaScript),

**Assisting Mentors**<br>
[Caryl Bigenho](https://github.com/GrannieB),
[Utkarsh Dhawan](https://github.com/crusher95),
[Samson Goddy](https://github.com/samswag/),
[Iqra Muhammad](https://github.com/iqraceme),
[Peace Ojemeh](https://github.com/perriefidelis) and
[Pratul Kumar](https://github.com/Pratul1997).

------------

## Performance in Music Blocks
**Prerequisites**<br>
 - Extensive experience with JavaScript
 - Experience with Travis CI (and/or other test environments for JavaScript)
 - Some experience of working on [Music
   Blocks](https://github.com/sugarlabs/musicblocks) or [Turtle
   Blocks](https://github.com/sugarlabs/turtleblocksjs)

**Description**<br>

Music Blocks is written in JavaScript and runs in a web browser. It
uses a number of libraries, notably, Tone.js and Easel.js. Since it
is intended to be used in settings such as schools, where old and
under-powered computers are common, tuning the performance (both the
memory footprint and the CPU consumption) is important. Further,
timing errors in audio are annoying and the Tone.js synths get crackly
when the CPU is maxed out.

This project involves several steps: (1) characterizing the problem,
e.g., what resources are currently being consumed? (2) identifying
potential places for improvement (including finding memory leaks,
etc.); (3) building a test environment so that we can measure the
impact of any changes to the code base; and (4) making changes to
enhance performance.

**Suggested issues to work on:**<br>
 - Any issue tagged with a
   [Performance](https://github.com/sugarlabs/musicblocks/labels/Performance)
   Label

**Coding Mentors**<br>
[Walter Bender](https://github.com/walterbender)

**Assisting Mentors**<br>
[Sumit Srivastava](https://github.com/sum2it) and
[Devin Ulibarri](https://github.com/pikurasa)

------------

## Platforms for Music Blocks
**Prerequisites**<br>
 - Extensive experience with JavaScript
 - Experience with Travis CI (and/or other test environments for JavaScript)
 - Some experience of working on [Music
   Blocks](https://github.com/sugarlabs/musicblocks) or [Turtle
   Blocks](https://github.com/sugarlabs/turtleblocksjs)

**Description**<br>

Music Blocks is written in JavaScript and runs in a web browser. It
uses a number of libraries, notably, Tone.js and Easel.js. Since it
is intended to be used in settings such as schools, we don't have a
lot of control over what platforms it will be run on, either in terms
of hardware, OS, or browser.

This project involves several steps

* characterizing the performance of Music Blocks across a variety of
platforms: different versions of Windows (e.g., 7 and 10), Mac OS,
GNU/Linux (Fedora, Ubuntu, et al.), and Android; different browsers,
such as Chrome, Chromium, Firefox, Opera, Safari, and Edge; and
different hardware platforms: low-end PCs, tablets, iPad, Android
devices, Raspberry Pi, and OLPC XO. Presumably it will work in some
situations and not in others. (Tone.js will be the issue in some
situations -- we need to explore porting the latest version, which as
of the writing of this description has not yet been released.)

* identifying potential places for improvement (e.g., working around
the local storage issues associated with Edge); and

* documenting the results of the investigation as well we developing
unit tests so that we can track changes going forward.

**Suggested issues to work on:**<br> - Any issue tagged with a
[Performance](https://github.com/sugarlabs/musicblocks/labels/Performance),
[Android](https://github.com/sugarlabs/musicblocks/labels/Android),
[Edge](https://github.com/sugarlabs/musicblocks/labels/Edge),
[Chrome](https://github.com/sugarlabs/musicblocks/labels/Chrome),
[Chrome on
Mac](https://github.com/sugarlabs/musicblocks/labels/Chrome%20on%20Mac),
[Chrome on
W10](https://github.com/sugarlabs/musicblocks/labels/Chrome%20on%20W10),
or [Firefox](https://github.com/sugarlabs/musicblocks/labels/Firefox)
Label

**Coding Mentors**<br>
[Walter Bender](https://github.com/walterbender)

**Assisting Mentors**<br>
[Jaskirat Singh](https://github.com/jaskirat2000) and
[Sumit Srivastava](https://github.com/sum2it)

------------

## Reconciling rhythm with pitch in Music Blocks widgets
**Prerequisites**<br>
 - Experience with JavaScript
 - Some UX experience
 - Some experience of working on [Music
   Blocks](https://github.com/sugarlabs/musicblocks) or [Turtle
   Blocks](https://github.com/sugarlabs/turtleblocksjs)

**Description**<br>

Music Blocks is written in JavaScript and runs in a web browser. It
introduces the concept of a note, which is a temporal quantum which
contains actions such as playing a pitch or drum sound or drawing some
graphic.

Music Blocks uses some widgets to help users create code that plays
sequences of notes. Some of these widgets, notably the phrase maker
and the music keyboard, are used to create code that generates phrases
that vary in pitch. Others, notably the rhythm maker, are used to
create code that generates variations in temporal rhythm.

You import rhythms generated by the rhythm maker into the phrase maker
in order to define the rhythm of the phrase being made. But once a
rhythm is imported, the rhythm cannot be changed from within the
phrase maker. You cannot import a rhythm into the music keyboard
widget and you cannot vary the rhythm when playing the keyboard. All
of these interactions are confusing to our users.

The gist of this project to reexamine the assumptions underlying the
segregation of rhythm from pitch in these widgets and to design and
implement a more unified experience. This could mean adding some of
the features of the rhythm ruler to the phrase maker and music
keyboard. Or perhaps just making it more intuitive how to import
rhythms. Step One is to come up with a design proposal.

**Suggested issues to work on:**<br>
 - Any issue tagged with
   [Widget](https://github.com/sugarlabs/musicblocks/labels/widget)
   Label

**Coding Mentors**<br>
[Walter Bender](https://github.com/walterbender) and
[Devin Ulibarri](https://github.com/pikurasa)

**Assisting Mentors**<br>
[Sumit Srivastava](https://github.com/sum2it)

------------

## Export Music Blocks code to JavaScript
**Prerequisites**<br>
 - Experience with JavaScript
 - Some experience of working on [Music
   Blocks](https://github.com/sugarlabs/musicblocks) or [Turtle
   Blocks](https://github.com/sugarlabs/turtleblocksjs)

**Description**<br>

Music Blocks is written in JavaScript and runs in a web browser. User
create programs in a snap-together block language which is inspired by
Logo. Music Blocks is a fork of Turtle Blocks JS, which is turn is a
derivative of [Turtle
Blocks](https://github.com/sugarlabs/turtleblocks), which is
written in Python.

One feature of the Python code is the ability to export to Python. In
other words, the block code can be exported as Python and run directly
by a Python interpreter. The required libraries, e.g., GTK, are
imported and the code itself reads as if the Turtle Blocks project
were written in Python. (There are a few anomalies, such as the use of
a dictionary for all of the Turtle Block boxes, although they are in
fact implemented as a dictionary internally.) See [Python
Export](https://wiki.sugarlabs.org/images/1/1a/Final_Report_on_Turtle_Blocks_Python_export.pdf)
for more details.

The goal of this project is to provide similar functionality for Music
Blocks: an export of a project to a JavaScript program (and HTML file)
that can run in a browser. The code should look and feel as much like
JavaScript as possible.

**Suggested issues to work on:**<br>
 - There are not any issues specific to this project, but working on
   some open bugs would be a good place to start in understanding the
   code base. [Bug](https://github.com/sugarlabs/musicblocks/issues?utf8=%E2%9C%93&q=is%3Aissue+is%3Aopen+label%3Abug+)

**Coding Mentors**<br>
[Vaibhav Aren](https://github.com/vaibhavdaren) and
[Walter Bender](https://github.com/walterbender)

**Assisting Mentors**<br>
[Jaskirat Singh](https://github.com/jaskirat2000),
[Sumit Srivastava](https://github.com/sum2it), and
[Devin Ulibarri](https://github.com/pikurasa).

------------


## Expand Sugarizer Exerciser activity
**Prerequisites**<br>

- Experience with JavaScript/HTML5 development
- Experience with ReactJS framework development

**Description**<br>
Exerciser is a new Sugarizer activity in version 1.1 that allow users to create exercise and let other users play to this exercise.
This activity propose different templates (multiple-choice question, reordering a list of items, cloze text) and an editor to customize questions.

![](assets/exerciser_1.png)

Once created, the exercise could be played locally or shared on the network using Sugarizer presence. At the end of the exercise a graph give results for each participants.

![](assets/exerciser_2.png)

The Exerciser was requested by teachers from Sugarizer deployment in Saint-Ouen and was developed during [GSoC 2018](https://wiki.sugarlabs.org/go/Summer_of_Code/2018). The Exerciser activity was inspired by the [Learning Apps web site](https://learningapps.org/).

![](assets/exerciser_3.png)

**Project Task**<br>
The objective of this project is to expand features of the Exerciser activity. More precisely, expected features are:

- Allow user to integrate multimedia element (images, sounds, videos) for questions and answers. All multimedia elements will come from the Journal.
- Add new templates (matching pair, group assignment, free text input)
- Improve result screen to view detail result on each answer for each user
- Support access to a remote library of exercises.

These improvements should keep the activity very simple so even a child should be able to create an exercise and share it. Like all Sugarizer activity, Exerciser activity should adopt the Sugar UI, be responsive (work on any screen size), work with the keyboard and with the mouse (to support touch screen), use journal and use localization.

Technically speaking the Exerciser activity is wrote in Javascript using Sugar-Web framework in ReactJS.

**Fist step to start:**<br>

- Play with the Exerciser activity
- Complete the [Sugarizer activity development tutorial](https://github.com/llaske/sugarizer/blob/dev/docs/tutorial.md)
- Study the [source code](https://github.com/llaske/ExerciserReact) of the Exerciser activity, try to fix bug or propose improvement
- Study integration of Journal in an activity by looking source code of ([Paint](https://github.com/llaske/sugarizer/tree/dev/activities/Paint.activity), [Memorize](https://github.com/llaske/sugarizer/tree/dev/activities/Memorize.activity) or [Fototoon](https://github.com/llaske/sugarizer/tree/dev/activities/Fototoon.activity) activity) and doing [Tutorial step 7](https://github.com/llaske/sugarizer/blob/dev/docs/tutorial_step7.md)



**Coding Mentors**<br>
[Lionel Laské](https://github.com/llaske) and
[Michaël Ohayon](https://github.com/mikklfr)

**Assisting Mentors**<br>
None.

------------


## Write activity for Sugarizer
**Prerequisites**<br>

- Experience with JavaScript/HTML5 development

**Description**<br>
Write is a major application provided by the Sugar Learning Platform. Write serves as a basic text editing application for Sugar. Write allow text formatting on characters (Font change, Bold, Italic, Underline) and paragraphs (Center, Justify left or right) plus some other extended features (Arrays, images, …), save it as ODF file and export to RTF, PDF, TXT or HTML.

More about Write features [here](https://help.sugarlabs.org/write.html).

![](assets/write_1.png)

The Write activity is a port of [AbiWord](https://www.abisource.com/) word processing tool. Write is developed in Python and GTK+.

**Project Task**<br>
The objective of this project is to rewrite an equivalent of Write activity in pure JavaScript to include it in Sugarizer.

This new Write activity should provide:

- Text formatting on characters (font change, bold, italic, underline, foreground/background color, …)
- Text formatting on paragraphs (center, justify left or right, list, blockquote, …)
- Embedded Images
- Arrays
- Export content to an easily editable/printable format (RTF/ODF, PDF)
- Multi-user editing the same document

This new Write activity may rely on an existing web editor ([Quill](https://quilljs.com/), [TinyMCE](https://www.tiny.cloud/), [CKEditor](https://ckeditor.com), [webODF](https://webodf.org/), ...).

![](assets/write_2.png)

This new Write activity should provide unique Sugarizer features:

- Sugarizer look & feel: use of Sugar toolbar and palette
- Sugarizer storage: load/save content into the Journal
- Export feature: an easy way to export content to a file format editable in other tools (Word, Open Office, RTF)
- Print feature: an easy way to export content to a printable format (PDF)
- Network integration: integrate Sugarizer presence to share the activity on the network so multiple users could edit the document at the same time
- Multi-device support: should work on any browser (Chrome, Firefox, Safari) and any platform (Android, iOS, Windows, Linux, MacOS) supported by Sugarizer.

As with other Sugarizer activities, the new Write activity should be written using JavaScript and Sugar-Web library.  Any JavaScript framework could also be use: jQuery, Vue.js, ReactJS, …

**First step to start:**<br>

- Test the existing Write activity in Sugar
- Complete the [Sugarizer activity development tutorial](https://github.com/llaske/sugarizer/blob/dev/docs/tutorial.md)
- Make a study on existing web editors: identify features of each and identify ways to export content to an editable/printable format.



**Coding Mentors**<br>
[Michaël Ohayon](https://github.com/mikklfr) and [Lionel Laské](https://github.com/llaske)


**Assisting Mentors**<br>
None

## Colored desktop and activity icons
**Prerequisites**<br>
- Extensive experience with Python and GTK3
- Experience with Sugar activities/toolkit
- Experience with user interface and graphics design (and SVG)

**Description**<br>
Sugar’s use of color and icons (described in detail here [HIG
color](https://wiki.sugarlabs.org/go/Human_Interface_Guidelines/The_Sugar_Interface/Colors)
and [HIG
icons](https://wiki.sugarlabs.org/go/Human_Interface_Guidelines/The_Sugar_Interface/Icons))
is functional but a bit tired when compared to modern desktops and
mobile systems.

This project is about redesigning the use of color in Sugar in order
to enable full-color icons for both the desktop itself and activities.

The primary role of color in the current icon design is to;
 - Indicate whether or not an activity has been used
 - Indicate whether or not an activity is being shared with another
   Sugar user (the colors of the person who launches the activity show
   up on the desktops of the people who join the activity.)

Fortunately, Sugar also support a mechanism for putting badges on
icons. An example is in the neighborhood view, where badges are used
to indicate which access points are active (See
[networkviews.py](https://github.com/sugarlabs/sugar/blob/master/src/jarabe/desktop/networkviews.py)).

We could use badges (See
[icon.py](https://github.com/sugarlabs/sugar-toolkit-gtk3/blob/master/src/sugar3/graphics/icon.py#L49))
to replace the functionality of color described above: for example, an
XO badge to indicate an activity has been used. And the color of that
badge could indicate collaboration. This would free up the icon itself
to take on any colors deemed suitable by the activity designer.

**Project Task:**<br>
 - [ ] Add color functionality to the badges;
 - [ ] Add badges in every instance where we currently use color: the
       desktop, the journal, the neighborhood view and the activity
       toolbar;
 - [ ] Work with the design team to come up with new color icons for
       all of the core Sugar toolbars, activities and activity toolbars

**Suggested issues to work on:**<br>
 - There are not any issues specific to this project, but working on
   some open bugs would be a good place to start in understanding the
   code base.

**Coding Mentors**<br>
[Walter Bender](https://github.com/walterbender) and
[Rahul Bothra](https://github.com/pro-panda)

**Assisting Mentors**<br>
[Peace Ojemeh](https://github.com/perriefidelis) and
[Jaskirat Singh](https://github.com/jaskirat2000)

------------

## Improve Sugarizer Server Dashboard
**Prerequisites**<br>

- Experience with JavaScript/HTML5 development
- Experience with MongoDB
- Experience with node.js and EJS framework

**Description**<br>
Sugarizer Server Dashboard is an admin tool for administrators and teachers of a Sugarizer deployment. The dashboard is used to control and manage the work of learners and manage and analyze all activities on a Sugarizer Server.


![](assets/dashboard.png)

Wrote two years ago during [GSoC 2017](https://wiki.sugarlabs.org/go/Summer_of_Code/2017), some improvement was requested this year by teachers for the incoming Sugarizer deployment in eight schools in Saint-Ouen.


**Project Task**<br>
The objective of this project is to expand features of the Sugarizer Dashboard. More precisely, expected features are:

- Extend dashboard UI
	- Provide sort by column on all views in Users/Journal/Activities/Classrooms screen
	- Add size column on Journal views and allow to sort on it
	- Add classroom counter in home page
	- Add export/import to CSV feature for Users/Classrooms screen
	- Improve Classrooms UI: integrate user icon, sort by name, …
	- Allow running on mobile (full responsive UI)
	- Integrate a simple tutorial (inspired by the one in Sugarizer)

- Create a new teacher profile
	- Update API to allow a new type of profile named "teacher" with view on its classrooms only
	- Add screens to handle teacher profile
	- Update global view to handle teacher profile
- Build improvement
	- Use build tools such as gulp, etc to minify and manage public resources
	- Upgrade outdated EJS version
- Add scripting
	- Create an initialization script to generate settings file and automate first admin creation
	- Provide import/export scripts for Users/Classrooms

Some other features could be added to this list depending of feedbacks on the field (new schools deployed in March).

Technically speaking the Sugarizer Server is wrote in JavaScript with node.js using [EJS](https://ejs.co/) framework.

**Fist step to start:**<br>

- Complete the [Sugarizer activity development tutorial](https://github.com/llaske/sugarizer/blob/dev/docs/tutorial.md) to understand how Sugarizer work
- Install [Sugarizer Server](https://github.com/llaske/sugarizer-server/tree/dev) and dashboard
- Create different Sugarizer users and see how the dashboard trace activities and usage
- Study the [source code](https://github.com/llaske/sugarizer-server/tree/dev/dashboard) of dashboard, try to fix bug, propose improvement or start to implement improvement suggested here.

**Coding Mentors**<br>
[Tarun K. Singhal](https://github.com/tarunsinghal92) and
[Lionel Laské](https://github.com/llaske)

**Assisting Mentors**<br>
[Pratul Kumar](https://github.com/Pratul1997)

------------

## Port Sugarizer activities to Sugar
**Prerequisites**<br>
 - Ability to write in programming languages like Python, GTK, JavaScript


**Description**<br>
The main aim of this project is to port [sugarizer activities](https://github.com/llaske/sugarizer/tree/dev/activities) back to Sugar Desktop.. Among these sugarizer activities, we also intend to Port Scratch and music blocks to Sugar Desktop.
[Scratch](https://scratch.mit.edu/) is a block based visual programming language for kids. Scratch 3.0 was created with HTML 5 using [Google’s blocky](https://developers.google.com/blockly/). Scratch 3.0 is an activity in Sugarizer, and can work offline. Scratch 3.0 works in the Browse activity in Sugar, but is online.

-We expect the [Sugarizer Scratch activity](https://github.com/llaske/sugarizer/tree/dev/activities/Scratch.activity) to be used.  This was ported by [Emily Ong](https://github.com/EmilyOng/Scratch.activity) and has been improved since by [Lionel Laské](https://github.com/llaske).  Also needed may be the latest version of [Scratch 3.0](https://github.com/LLK/scratch-gui).

 -We expect the [Sugar web activity library `sugar-web`](https://github.com/sugarlabs/sugar-web) will need fixes backported from Sugarizer.

-We expect the [Sugar Toolkit for GTK+ 3 `sugar-toolkit-gtk3`](https://github.com/sugarlabs/sugar-toolkit-gtk3) may need new fixes.

Suggested issues to work on:

- backport the changes from Sugarizer to `sugar-web`, such as in [`env.js`](https://github.com/sugarlabs/sugar-web/blob/master/env.js#L49),
 - Suggesting or adding features, fixing bugs, or releasing activities will help you to gain experience	Suggesting or adding features, fixing bugs, or releasing activities may help you to gain experience.

Steps to take:
1. [Setup a Development Environment](https://github.com/sugarlabs/sugar/blob/master/docs/development-environment.md)
2. Fix all [issues](https://github.com/sugarlabs/sugar-web/issues) listed on the sugar-web repository
3. Fix [sugar-web](https://github.com/sugarlabs/sugar-web) and make sure it works.
4. Test some [Sugarizer activities](https://github.com/llaske/sugarizer/tree/dev/activities) on Sugar to make sure sugar-web is working.
5. Investigate the current [Scratch 3.0 port](https://github.com/llaske/sugarizer/tree/dev/activities/Scratch.activity) on Sugarizer and play around it.
6. Fix the user media permission request handing in [Browse](https://github.com/sugarlabs/browse-activity/issues/85) activity
7. Get [Music Blocks](https://github.com/sugarlabs/musicblocks) working in Sugar Web
8. Get [Scratch](https://github.com/LLK/scratch-gui) working in Sugar Web
9. Make Scratch port as a native activity.
10. Make Music Blocks port as a native activity



**Coding Mentors**<br>
[James Cameron](https://github.com/quozl) and
[Iqra Mohammad](https://github.com/iqraceme)

**Assistant Mentors**<br>
[Samson Goddy](https://github.com/samswag)

------------

## Create a Sugar Dashboard
**Prerequisites**<br>
- Extensive experience with Python and GTK
- Demonstrable skill in coding/bug fixing Sugar activities
- Demonstrable skill with user-interface design
- Demonstrable skill with data visualizarion

**Description**

Dashboard - This involves developing an app that provides at-a-glance
views of key performance indicators relevant to Sugar users, more like
a heatmap of the user’s progress (e.g last activity worked on, last
project opened etc.)

“Tamagotchi” - This involves designing a widget that can substitute for
the XO in the center of the screen that gives the user an overall
health condition of your computer e.g battery status, available disk
space, etc. It would provide an at-a-glance indication of machine
status without having to go to the control panels or the
Frame. Ideally it would still look like the XO, but have some
personality.

Journal - An app that does what the Journal does but is also able to
be extended by the end user (It is relatively easy for an end user to
modify an app compared to the Sugar desktop.) Features might include
integration of the Portfolio activity functionality and integration of
the dashboards described above.

The work involved in this project would be:
- Work with mentors to come up with flow design for the dashboard
- Identify potential places for improvement on Journal
- Identify useful features to highlight in a dashboard
- Identify useful system-status information for the “Tamagotchi” display
- Write the code (Python) to implement these designs

Suggested Issues to work on:
- Fixing issues in Python activities
- Adding new features in Python activities
- Creating new Python activities

**Coding Mentors:**
[Walter Bender](https://github.com/walterbender),
[Rahul Bothra](https://github.com/pro-panda) and 
[Ibiam Chihurumnaya](https://github.com/chimosky)

**Assistant Mentors**<br>
[Peace Ojemeh](https://github.com/perriefidelis) and
[Jaskirat Singh](https://github.com/jaskirat2000)

------------

## Add Bluetooth support to Sugar

**Prerequisites**<br>
 - One or more spare systems with a Bluetooth host controller interface,
 - Bluetooth devices including keyboard, mouse, speakers, and headset,
 - Experience with Python, DBus, GNOME, and device access bindings provided by [PyGObject](https://lazka.github.io/pgi-docs/),

**Description**<br>
[Sugar](https://github.com/sugarlabs/sugar) requires a wired keyboard and mouse.  Sugar is a desktop shell.  Bluetooth is available in other desktop shells, the most notable are [GNOME](https://gnome.org/) and [KDE](https://kde.org/).  Let's add Bluetooth support to Sugar.

There are two user experiences to consider;

  - searching for, pairing, and unpairing, with the [_My Settings_](https://help.sugarlabs.org/en/my_settings.html) or control panel in Sugar,

  - indicating status with the device icons in the [_Frame_](https://help.sugarlabs.org/en/frame.html).

You must have one or more notebook, laptop or desktop computers on which you will run Sugar _natively_, without using virtual machines.  They will be needed for the duration of the project.  This is critical, because that's how Sugar is intended to be run on systems with Bluetooth.

You should have a collection of Bluetooth devices you can use to test with.  Sharing your devices with other people, or your main computer, will slow you down.  You might buy second-hand devices and sell them after the project.

**Project Task Checklist**<br>
_(in chronological order)_
  - Define requirements (secure pairing with keyboards and mice, pairing with speakers and headsets, unpairing),
  - Define acceptance criteria (successful use of devices on Fedora 30 and Ubuntu 18.04),
  - Reverse engineer GNOME or KDE Bluetooth user service applications or applets,
  - Evaluate license compatibility,
  - Add _My Settings_ control panel for Bluetooth, showing scanned devices, offering to pair, and unpair,
  - Add _Frame_ icons for paired devices,
  - Change _Help_ activity user documentation,
  - Release changes for testing by other developers,
  - Coordinate testing, receive reports, and fix bugs.

**Coding Mentors**<br>
[James Cameron](https://github.com/quozl) (disclosure; James works for One Laptop per Child, a non-profit supplying laptops with Bluetooth)

**Assisting Mentors**<br>
None.

## Want to fill this place ? Make a PR with your idea!
