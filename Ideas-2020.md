# GSoC 2020 Ideas

   * [Port Sugar and core activities to Python 3](#port-sugar-and-core-activities-to-python-3)
   * [Improve and maintain 25 Sugar activities](#improve-and-maintain-25-sugar-activities)
   * [Export Music Blocks code to JavaScript](#export-music-blocks-code-to-javascript)
   * [Colored desktop and activity icons](#colored-desktop-and-activity-icons)
   * [Port Sugarizer activities to Sugar](#port-sugarizer-activities-to-sugar)
   * [Administrative notes](#administrative-notes)

------------

## Port Sugar and core activities to Python 3

**Selected**<br>
Aniket Mathur. [Blog](https://medium.com/@aniketmathur).  [Work review](2019/work-product/port-to-python-3/README.md)

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
[James Cameron](https://github.com/quozl) (via mailing list)

**Assisting Mentors**<br>
None.

------------

## Improve and maintain 25 Sugar activities
**Selected**<br>
Swarup N. [Blog](https://nswarup14.github.io).

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
[Ibiam Chihurumnaya](https://github.com/chimosky) (via mailing list).

**Assisting Mentors**<br>
None.

------------

## Export Music Blocks code to JavaScript
**Selected**<br>
Nobody.

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

--------------

## Colored desktop and activity icons
**Selected**<br>
Nobody.

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

## Port Sugarizer activities to Sugar
**Selected**<br>
Nobody.

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
[Iqra Mohammad](https://github.com/iqraceme) (via mailing list)

**Assistant Mentors**<br>
[Samson Goddy](https://github.com/samswag)

------------
## Model–View–Controller refactoring for Music Blocks

Model–View–Controller is a software design approach used for
developing user interfaces that divides the program logic into three
interconnected elements to separate internal representations of
information from the ways information is presented to and accepted
from the user. (See
https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller)

Music Blocks intermixes it program logic to the point where it is
getting difficult to maintain. This project is to take a deep dive
into the code in order to develop a plan (your proposal) and implement
a refactoring along the lines of MVC.

We made [some
progress](https://github.com/sugarlabs/musicblocks/commit/3085a99a7259d9d30522daaf1da2c831d0b4bda2)
on MVC during GCI, but there is much more to be done.

**Coding Mentors**<br>
[Walter Bender](https://github.com/walterbender)
[Favour Kelvin](favourkelvin17@gmail.com)

**Assisting Mentors**<br>
[Devin Ulibarri](https://github.com/pikurasa).

------------

# Administrative notes

Above are a list of ideas we've planned for GSoC 2019 projects.
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
