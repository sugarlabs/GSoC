# Music Blocks Scale Degree vs n^th Modal Pitch

I've spent last three months working on this proposal with [Sugar Labs](http://sugarlabs.org/). I have learnt a lot over the summer working under the guidance of my mentors, [Walter Bender](https://github.com/walterbender) and [Devin Ulibarri](https://github.com/pikurasa).

This post links to all the work I've done over the summer.

**Nerd Stats:** Around 33 PRs, 80 commits and 5000+ insertions and 2 Version releases.

## About: 

![Sugar Labs](https://sugarlabs.org/assets/logoOpt.png)

> Music Blocks is a programming language and collection of manipulative tools for exploring musical and mathematical concepts > in an integrative and fun way.
>              -- Music Blocks Github README


**Project Abstract :** There is an underlying issue with scale degree block as we have it now. The current block does not perform the function that musicians expect when they think of scale degree. Instead the block functions in a way that we can specify a key/mode of a pitch length, input a number and result is a pitch in the chosen key/mode.
The current block has its utility in programming and we aim to keep it as such with a modified name. A new block for scale degree needs to be added with the desired functionality.

## Final Product:

The final product out of my GSoC contributions are most notably a new Scale Degree block, Pitch Preview options, an exhaustive converter block that provides the freedom to transform between different variables inside Music Blocks and several other performance and behaviour based enhancements.

- Fixed Octave calculation for Scale Degree and Nth Modal Pitch block. [#2275](https://github.com/sugarlabs/musicblocks/pull/2275), [#2519](https://github.com/sugarlabs/musicblocks/pull/2519)

- Fixed ambiguity between accidentals while building scales. [#2284](https://github.com/sugarlabs/musicblocks/pull/2284)

- Transition of Old Scale Degree block to a new block named Nth Modal Pitch and subsequent changes. [#2286](https://github.com/sugarlabs/musicblocks/pull/2286), [#2292](https://github.com/sugarlabs/musicblocks/pull/2292)

- Addition of the new Scale Degree Block. [#2314](https://github.com/sugarlabs/musicblocks/pull/2314)

- Addition of a block (dubbed as Output Tools) that provides user with insightful information about the pitch being played. [#2359](https://github.com/sugarlabs/musicblocks/pull/2359)

- Increasing scope of the above block by transforming it into a converter that can potentially convert the current pitch or any user provided input to his/her desired output. [#2450](https://github.com/sugarlabs/musicblocks/pull/2450), [#2487](https://github.com/sugarlabs/musicblocks/pull/2487)

- Add a Y2Pitch converter block that converts a vertical position into a musical note. [#2429](https://github.com/sugarlabs/musicblocks/pull/2429)

- Addition of a Pitch Preview menu letting users work in keys other than C major, thus adding an IDE like experience to Music Blocks. [#2419](https://github.com/sugarlabs/musicblocks/pull/2419), [#2438](https://github.com/sugarlabs/musicblocks/pull/2438), [#2451](https://github.com/sugarlabs/musicblocks/pull/2451), [#2488](https://github.com/sugarlabs/musicblocks/pull/2488), [#2498](https://github.com/sugarlabs/musicblocks/pull/2498)

- Redisgned working of Random block with Solfege. [#2386](https://github.com/sugarlabs/musicblocks/pull/2386)

- Add ESLint rules for the JavaScript Directory. [#2340](https://github.com/sugarlabs/musicblocks/pull/2340)

- DOCUMENTATION: Added documentation regarding the converter blocks added above. [#2500](https://github.com/sugarlabs/musicblocks/pull/2500)

- Configured Plus Block to work with scale degree. [#2539](https://github.com/sugarlabs/musicblocks/pull/2539)

- On Scale degree do block. (Wasn't realised due to some underlying shortcomings) [#2381](https://github.com/sugarlabs/musicblocks/pull/2381)

- Bugs / Regression fixes and Minor performance improvements. [#2245](https://github.com/sugarlabs/musicblocks/pull/2245),
[#2248](https://github.com/sugarlabs/musicblocks/pull/2248),
[#2276](https://github.com/sugarlabs/musicblocks/pull/2276),
[#2278](https://github.com/sugarlabs/musicblocks/pull/2278),
[#2280](https://github.com/sugarlabs/musicblocks/pull/2280),
[#2325](https://github.com/sugarlabs/musicblocks/pull/2325),
[#2336](https://github.com/sugarlabs/musicblocks/pull/2336),
[#2360](https://github.com/sugarlabs/musicblocks/pull/2360),
[#2428](https://github.com/sugarlabs/musicblocks/pull/2428),
[#2512](https://github.com/sugarlabs/musicblocks/pull/2512),
[#2391](https://github.com/sugarlabs/musicblocks/pull/2391)

## Notable Features: 

### Scale Degree Block: 

When the project started we actually did have a block called scale degree but it didn't function exactly how it should.
That block was converted to N^th Modal Pitch and a new scale degree block in a different form-factor was introduced.

**N^th Modal Pitch:**

![Nth Modal Pitch](https://user-images.githubusercontent.com/44023445/91665111-e60f7c00-eb10-11ea-9af9-7df2c1801408.png)

**Scale Degree:**

![Scale Degree](https://user-images.githubusercontent.com/44023445/91665190-72ba3a00-eb11-11ea-8be6-6db3e57189cf.png)

### Pitch Preview Menu: 

Music Blocks contains a set-key block that let users access keys and modes apart from the default C major. But the usage of this block is restricted to final execution of project. Pitch-Preview Menu provides several keys/modes to choose from and that selected key + mode combination is used to set-up the work environment inside Music Blocks. This doesn't affect the final execution of projects.

![Pitch Preview Menu](https://user-images.githubusercontent.com/44023445/91665269-f411cc80-eb11-11ea-8e3d-83486d8295be.png)


### Pitch Converter Block: 

This started off as a simple block to display stats about the current note being played. Later it was evolved into a more functional converter that can take both user-provided custom input or the current note being played and convert it into useful and usable outputs.

**Pitch Converter Block:**

![Pitch Converter](https://user-images.githubusercontent.com/44023445/91665329-61bdf880-eb12-11ea-8bdc-461cdae15da7.png)

**Options provided by this block through a Pie-Menu Interface:**

![Pie-Menu](https://user-images.githubusercontent.com/44023445/91665346-903bd380-eb12-11ea-9d4b-48237a29e7f8.png)

## Status: 

All the goals proposed as part of the initial proposal were successfully met. I went on further to build upon a few more of the related issues. Some of the additional work was implemented but faced a lot of performace issues due to some underlying issues which need to be worked upon from scratch and form the core of the musical functionality inside the project. I will try to fix them in the near future.

## Important Links:

- [Proposal](https://docs.google.com/document/d/1Z5rSSGamMQauwTuwtn3oh214c1kYnIR4DjqFWMHiSHg/edit?usp=sharing)
- [Music Blocks](https://musicblocks.sugarlabs.org/)
- [Music Blocks Repository](https://github.com/sugarlabs/musicblocks)

## The End?

I'd like to thank:  

All my mentors: [Devin Ulibarri](https://github.com/pikurasa) and [Sumit Srivastava](https://github.com/sum2it), who took the pain of almost 'teaching' me music from scratch, [Walter Bender](https://github.com/walterbender) whose insights saved hours of struggle with the code and [Vaibhav Aren](https://github.com/vaibhavdaren), for valuable code-review and regular feedbacks.  

My fellow GSoC students, [Saksham Mrig](https://github.com/sksum) and [Anindya Kundu](https://github.com/meganindya) for efficiently coordinating parallel work and providing valuable help at times and all the community members. 

Looking to contribute more, however I can. 

Lastly, Thanks to Google for organising such a great program.
