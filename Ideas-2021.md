# GSoC 2021 Ideas

## Project Ideas

   * [Music Blocks 2.0 Block Graphics Refactoring](#music-blocks-2.0-block-graphics-refactoring)
   * [Music Blocks 2.0 Menus and Palettes](#music-blocks-2.0-menus-and-palettes)

[Administrative notes](#administrative-notes)

------------

## Music Blocks 2.0 Block Graphics Refactoring

Mentor: [Walter Bender](https://github.com/walterbender),
Backup mentor: [Anindya Kundu](https://github.com/meganindya).

**Prerequisites**<br>
 - Experience with React (TypeScript)
 - Experience with graphic design
 - Strong experience with SVG

**Description**<br> We are refactoring Music Blocks. This gives us an opportunity to revisit a number of UX issues, including the design and implementation of the block graphics. One thing that will not change is that we will use SVG for the block graphics, but other than that, we have the opportunity to rethink bot how blocks look (in particular, how they interlock and how they expand/resize) as well as the corresponding code we use to generate the block artwork SVG. Finally, it would be great to use CSS to define many of the block attributes, e.g., color and other styling features, rather than having everything hardcoded in the SVG. (Modern SVG supports this.)

**Project Task Checklist**<br>
 - Familiarize yourself with the current implementation [blockfactory](https://github.com/sugarlabs/musicblocks/blob/master/js/blockfactory.js)
 - Come up with a framework for how the block interconnections will work -- we'd like to make it more obvious how blocks interlock and also use the interlocking to help define the schemas associated with some block logic.
 - Design the class structure for the new block rendering approach.
 - Implement all of the above in React (TypeScript).

**Coding Mentors**<br>
[Walter Bender](https://github.com/walterbender),
[Anindya Kundu](https://github.com/meganindya).

**Assisting Mentors**<br>
None.

------------

## Music Blocks 2.0 Menus and Palettes
Mentor: [Anindya Kundu](https://github.com/meganindya),
Backup mentor: [Walter Bender](https://github.com/walterbender).

**Prerequisites**<br>
 - Experience with React (TypeScript).
 - Experience with user interface design
 - Strong experience with Materials

**Description**<br> We are refactoring Music Blocks. This gives us an opportunity to revisit a number of UX issues, including the design and implementation of the menu bars and block palettes. We have some sketches as to what it might look like, but your ideas are most welcome.

**Project Task Checklist**<br>
 - Familiarize yourself with the current implementations [toolbars](https://github.com/sugarlabs/musicblocks/blob/master/js/toolbar.js) [palettes](https://github.com/sugarlabs/musicblocks/blob/master/js/palette.js)
 - Familiarize yourself with the M 2.0 sketches [wireframe](https://github.com/sugarlabs/musicblocks-2/discussions/5)
 - Come up with a framework for the new toolbars and palettes
 - Design the class structure for the toolbars
 - Design the class structure for the palettes
 - Implement all of the above in React (TypeScript).

**Coding Mentors**<br>
[Anindya Kundu](https://github.com/meganindya),
[Walter Bender](https://github.com/walterbender).

**Assisting Mentors**<br>
None.

------------

# Administrative notes

Above are a list of ideas we've planned for GSoC 2021 projects.
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
These may help you to get familiar with the project.  The more you
work on these issues, the more experienced you will be for the
project.  However, this is not a strict list.  You _should_ try and
explore other issues as well.
