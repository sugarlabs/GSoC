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

## Want to fill this place ? Make a PR with your idea!
