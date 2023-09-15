
<h1 align="center">Sugarizer Vue.JS COre</h1>

<div align="center">
  <span>Google Summer of Code, 2023 Final Report</span>
  <br>
  <br>
</div>

<div align="center">
  <img height="200px" width="200px" src="https://user-images.githubusercontent.com/48005711/192224558-8479ee0f-2f4d-4b8b-a4e7-ef9a726be6b8.png"/>
  <img height="200px" width="200px" src="https://user-images.githubusercontent.com/48005711/192224568-601ba03a-033f-47f3-ab2b-5eda0fc60688.png"/>
  
</div>

*Name - Vinayak Nayar*

*Email - nayarvinayak@gmail.com*

*GitHub username - [vinayaknayar](https://github.com/vinayaknayar/)*

*Mentors - [Lionel Laské](https://github.com/llaske), [Nikhil Mehra](https://github.com/NikhilM98)*


## About the project
The project Sugarizer Vue.JS Core involves rewriting the Core UI of Sugarizer in Vue.JS. My task was to implement five screens,i.e, First Screen, Login Screen, List View Screen, Home Screen and Settings.

## Work Done 
- Localization component using [i18next](https://www.i18next.com/) internationalization framework.
- Implemented Core UI screens, interface for [Sugarizer Server API](https://dev.sugarizer.org/docs/) 
  - First Screen
  - Login Screenfil
  - Home Screen
  - List View Screen
  - Settings

## Pull Requests 
Belonging to project's scope:
- [Implemention of the above mentioned screens for v2](https://github.com/llaske/sugarizer/pull/1370)
- [Localization component for v2 using i18next](https://github.com/llaske/sugarizer/pull/1365)  

Beyond the project's scope:
- [Migration Guide for i18next in the activities](https://github.com/llaske/sugarizer/pull/1377)
- [Migration of measure activity's localization to i18next](https://github.com/llaske/sugarizer/pull/1362)
- [Migration of QR code activity's localization to i18next](https://github.com/llaske/sugarizer/pull/1371)
- [A small script to check default strings in ini files](https://github.com/llaske/sugarizer/pull/1367)
- [Designing chat activity UI](https://github.com/llaske/sugarizer/issues/1356)

## What I learnt from the project?
- The most important thing I learnt from the participating in GSoC is how open source works. Being a contributor at a FLOSS organisation I understood that running an organisation takes more efforts than coding. So, I want to express my gratitude towards my mentor and Sugarlabs Community.
- While working on a big project, decision making is the key. I learnt here that before taking a step forward and making any changes in code there should be a proper planning and a well-defined approach towards it.
- And ofcourse, I got the opportunity to learn about technologies newer to me and work on something that I never did before.

## What were the difficulties/challenges encountered?

- The major difficulty I faced during my project was understanding the Enyo.JS code as it is a quite old framework with an okay documentation but thanks to ChatGPT it explained me most of the code I needed to understand.
- Understanding the design and implementation of the Sugarizer Core has been quite a challenge because there were minute details I needed to take care of, thanks to my mentor for regular feedbacks and clearing my doubts due to which it all went smooth.
- It was the first time I had to work on prop-event handling between a parent and child component in Vue, so at first I wasn’t sure how to implement it but after looking at some previous implementation in V2 and surfing on web I figured it out.

## Future Plans
As a lot of more work needs to be done for Sugarizer V2, I would like to take part in that journey and contribute more to the Sugarizer App. 
