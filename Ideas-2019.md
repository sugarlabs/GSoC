# GSoC 2019 Ideas:
This is the list of potential projects we've planned for this GSoC.  If you have any ideas which can be useful to us, but are not in the list, we'd love to hear from you. You need not be a potential student or a mentor to suggest ideas.

## Criteria for new ideas:
1. Does it fill an empty pedagogy niche in the activity set for Sugar or Sugarizer,
2. Does it increase quality of our software products (Sugar, activities, Music Blocks, Sugarizer),
3. Does it _not_ involve any project infrastructure, e.g. not another app store, web site, or developer landing page,
4. Do we have a developer _now_ who would be willing and able to do it if a student was not available, and who can _promise_ to do it if a student is not selected.

For each project, there is a list of 'Suggested issues to work on'. These issues will help you to get familiar with the project. The more you work on these issues, the more experienced you will be for the project. However, this is not a strict list. You can (read _should_) try and explore other issues as well ;-)

------------

## Port Sugar and core activities to Python 3
**Priority:** High

**Prerequisites**<br>
 - Experience with porting telepathy bindings
 - Strong experience of working on [Sugar](https://www.github.com/sugarlabs/sugar) and activities

**Desciption**<br>
Sugar runs on Python 2. Support for Python 2 is being withdrawn fast and we need to move to Python 3. The work was started in GSoC 2018, see [link](https://wiki.sugarlabs.org/go/Python_2to3), and needs to be wrapped up. See GitHub Project [Port to Python 3 via six](https://github.com/orgs/sugarlabs/projects/1) for open issues and pull requests

The telepathy library does not have its bindings for Python 3, and porting Telepathy to its PyGObject binding is a pre requisite for the Port to Python 3 Project, see GitHub Project [Port to TelepathyGLib](https://github.com/orgs/sugarlabs/projects/4).

**Suggested issues to work on:**<br>
 - Sugar-Toolkit-gtk3: [#402 Port to TelepathyGLib](https://github.com/sugarlabs/sugar-toolkit-gtk3/issues/402)
 - Collabwrapper: [#1 Port to TelepathyGLib](https://github.com/sugarlabs/collabwrapper/issues/1)
 - Sugar: [#815 activitychooser window is not modal and adds dependency of toolkit to jarabe](https://github.com/sugarlabs/sugar/issues/815)
 - Sugar: Completing [#740 Add corner layout](https://github.com/sugarlabs/sugar/pull/740)
 - gwebsockets: [#2 Release v0.5](https://github.com/sugarlabs/gwebsockets/issues)

**Expected Mentors**<br>
[Rahul Bothra](https://www.github.com/pro-panda)

------------

## Improve and maintain 20 Sugar activities
**Priority:** Medium

**Prerequisites**<br>
 - Strong experience of working on Sugar activities
 - Releasing and maintaining activities on ASLO

**Description**<br>
Sugar has a lot of activities (250+ on GitHub, and more elsewhere). These activities have a scope for improvement; bugs, features, possible ASLO release required. This project will involve working on atleast 20 activities to improve them. Students can choose activities on their own, and are encouraged to select activities which are either a part of Fructose or have a strong pedagogical value. To understand how to locate and work on activities, see our guide to [Modifying Activities](https://github.com/sugarlabs/sugar-docs/blob/master/src/contributing.md#modifying-activities)

In the proposal, students should mention all the issues they will work on. Any new feature suggestion should be discussed on GitHub Issues in advance.

Since there are a lot of activities to work on, more than 1 instance of this project can be selected

**Suggested Issues to work on:**<br>
 - write-activity: [#28 Port to sugar3.speech](https://github.com/sugarlabs/write-activity/issues/28)
 - jukebox-activity: [#22 Add collaboration for sharing playlist items](https://github.com/sugarlabs/jukebox-activity/issues/22)
 - jukebox-activity: [#23 Enable visualisations in the playbin element for audio content](https://github.com/sugarlabs/jukebox-activity/issues/23)
 - log-activity: [#12 Delete Log File button leaves entry in list](https://github.com/sugarlabs/log-activity/issues/12)
 - read-activity: [#28 add back EPUB support](https://github.com/sugarlabs/read-activity/issues/28)
 - infoslicer: [#23 Traceback, motion_notify](https://github.com/sugarlabs/infoslicer/issues/23)
 - getiabooks: [#6 Ctrl q Ignored](https://github.com/sugarlabs/getiabooks/issues/6)
 - iq-activity: [#10 Port to Latest Sugargame](https://github.com/sugarlabs/iq-activity/issues/10)
 - sin-dientes-activity: [#1 Port to GTK+ 3](https://github.com/sugarlabs/sin-dientes-activity/issues/1)
 - readextexts: [#10 Missing Stop button and continually widening canvas](https://github.com/sugarlabs/readetexts/issues/10)

Suggesting or adding features, fixing bugs, or releasing activities will help you to gain experience

**Expected Mentors**
[Rahul Bothra](https://www.github.com/pro-panda)

------------

## Performace in Music Blocks
**Priority:** High

**Prerequisites**<br>
 - Extensive experience with JavaScript
 - Experience with Travis CI (and/or other test environments for JavaScript)
 - Some experience of working on [Music
   Blocks](https://www.github.com/sugarlabs/musicblocks) or [Turtle
   Blocks](https://www.github.com/sugarlabs/turtleblocksjs)

**Desciption**<br>

Music Blocks is written in JavaScript and runs in a web browser. It
uses a number of libraries, noteably, Tone.js and Easel.js. Since it
is intended to be used in settings such as schools, where old and
underpowered computers are common, tuning the performance (both the
memory footprint and the CPU consumption) is important. Further,
timing errors in audio are annoying and the Tone.js synths get crackly
when the CPU is maxed out.

This project involves several steps: (1) charactering the problem,
e.g., what resources are currently being consumed? (2) identifying
potential places for improvement (including finding memory leaks,
etc.); (3) building a test environment so that we can measure the
impact of any changes to the code base; and (4) making changes to
enhance performace.

**Suggested issues to work on:**<br>
 - Any issue tagged with a [Performance](https://github.com/sugarlabs/musicblocks/labels/Performance) Label

**Expected Mentors**<br>
[Walter Bender](https://www.github.com/walterbender)

------------

## Performace in Music Blocks
**Priority:** Moderate

**Prerequisites**<br>
 - Experience with JavaScript
 - Some UX experience
 - Some experience of working on [Music
   Blocks](https://www.github.com/sugarlabs/musicblocks) or [Turtle
   Blocks](https://www.github.com/sugarlabs/turtleblocksjs)

**Desciption**<br>

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
 - Any issue tagged with [Widget](https://github.com/sugarlabs/musicblocks/labels/widget) Label

**Expected Mentors**<br>
[Walter Bender](https://www.github.com/walterbender) and 
[Devin Ulibarri](https://github.com/pikurasa)

------------


## Want to fill this place ? Make a PR with your idea!
