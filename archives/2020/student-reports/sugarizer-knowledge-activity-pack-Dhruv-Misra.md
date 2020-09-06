<h1 align="center">Sugarizer Knowledge Activity Pack</h1>

<div align="center">
  <span>Google Summer of Code, 2020 | Sugar Labs</span>
  <br>
  <a href="https://github.com/dhruvmisra">Dhruv Misra</a>
</div>

## About the Project

My project involves creating two activities for Sugarizer (in Vue.js framework) as requested by teachers from the Sugarizer deployment in Saint-Ouen:

### Curriculum
The Curriculum activity is a way for a student to self-check his/her skills from a set of knowledge categories and provide multimedia element to demonstrate these skills. It displays a hierarchical set of skills grouped by categories and lets the user explore the tree. On each skill the user can validate (i.e. acquire skill) and provide multimedia elements (pictures, sounds or videos coming from the Journal) to demonstrate the skill. The user should be able to export a report showcasing the acquired skills in multiple file formats.

***PR link:*** https://github.com/llaske/sugarizer/pull/809

#### ✅ Work completed

The activity has been completed and merged into the `dev` branch where it is being tested by all teachers. It will be included in the subsequent release.

Features:
* Template selector with templates for Kindergarten, Primary School and Montessori School.
* Categories grid with Top 3 skills preview along with a category progress bar showing the acquired skill medals along with their level.
<img src="https://github.com/dhruvmisra/GSoC-2020-SugarLabs-Report/blob/master/assets/curriculum-categories.jpg">

* Numerous skills under each category, each skill having options to acquire it and upload media elements (images, audio or videos) as proof.
<img src="https://github.com/dhruvmisra/GSoC-2020-SugarLabs-Report/blob/master/assets/curriculum-skills.jpg">

* Trophies section showing the various achievements unlocked (First Skill Acquired, First Media Upload, etc.) by the user.
<img src="https://github.com/dhruvmisra/GSoC-2020-SugarLabs-Report/blob/master/assets/curriculum-trophies.jpg">

* Powerful Settings mode allowing reordering, creation, updation or deletion of categories/skills. This gives teachers ability to create completely customized templates which can be hosted and shared, allowing anyone with the link to import and start working with the new skill set.
<img src="https://github.com/dhruvmisra/GSoC-2020-SugarLabs-Report/blob/master/assets/curriculum-settings.jpg">

* Report generation for the user containing statistical information about the acquired skills & trophies, with proofs and their timestamps in CSV, PDF, DOC and ODT formats. 
<img src="https://github.com/dhruvmisra/GSoC-2020-SugarLabs-Report/blob/master/assets/curriculum-export.jpg">

* Network sharing, allowing teachers to simply connect to a user's instance and check their acquired skills, proofs, trophies or generate a report.

### Vote
The Vote activity provides an easy-to-build poll system. The user can create a poll (Yes/No, Rating, MCQ, Text or Image-MCQ) and then share it on the network so any user can vote in real-time. After the end of voting period, a screen sums up results of the vote showing various statistics. The stats for each poll are saved and can be exported to a suitable format.

***PR link:*** https://github.com/llaske/sugarizer/pull/833

#### ✅ Work completed

The activity has been completed and merged into the `dev` branch. It will then be included in the subsequent release.

Features:
* Polls grid with common default polls to begin with, making launch of a poll as easy as clicking on a poll card.
<img src="https://github.com/dhruvmisra/GSoC-2020-SugarLabs-Report/blob/master/assets/vote-polls.jpg">

* Detailed statistics screen after launching a poll, showing the real-time information on an appropriate Chart with legends along with a list of users and whether they have voted or have a doubt.
<img src="https://github.com/dhruvmisra/GSoC-2020-SugarLabs-Report/blob/master/assets/vote-stats.jpg">

* Option to show real-time results to the connected users.
* Option to automatically stop the poll after all connected users have voted.
* History view listing all the completed polls with their timestamps and statistics.
<img src="https://github.com/dhruvmisra/GSoC-2020-SugarLabs-Report/blob/master/assets/vote-history.jpg">

* Ability for the host to join back with intact history, incase of unexpected disconnection.
* Exporting the entire statistical history of completed polls to CSV, PDF, DOC and ODT formats.
<img src="https://github.com/dhruvmisra/GSoC-2020-SugarLabs-Report/blob/master/assets/vote-export.jpg">

## Beyond the Project

Apart from my project, I created an Activity Template for Vue.js and wrote the entire tutorial for it. This is a template to start creating a new activity for Sugarizer, making Vue.js developers feel at home with the component-based functionalities.

***PR link:*** https://github.com/llaske/sugarizer/pull/800

Benefits:
* A web app written using Vue-inline can become compatible with the Sugarizer platform by simply importing some components and initializing them.
* Easy to integrate a specific functionality.
* Decomposed and encapsulated code making it easier to manage.
* More flexibility in project design.
* Adds a layer of abstraction. New contributors can focus on activity-specific code rather than the working of Sugarizer functionalities.

I have been updating this activity template on a regular basis to add more functionalities after discussing with mentors and other community members. Hope this forms a basis to port the entire Sugarizer platform to Vue.js one day. :)

## Miscellaneous

Other notable contributions to Sugar Labs:
* Ported Fraction Bounce activity from Python to JavaScript - https://github.com/llaske/sugarizer/pull/683
* Added new library for ES6+ minification during build (allowing official support for ES6 in Sugarizer) - https://github.com/llaske/sugarizer-apkbuilder/pull/5
* Added feature to exclude some activities from Android builds - https://github.com/llaske/sugarizer-apkbuilder/pull/4
* Replaced library to reorder activities (improving usability & saving multiple server calls) - https://github.com/llaske/sugarizer-server/pull/236

## My experience 

Google Summer of Code didn't only help me expand my knowledge, but also helped me grow as a person. It taught me to respect and have fun in the open-source culture. I learnt how to have effective communication with a large community and to put my views forward through discussion. It also made me realize the potential of open-source software and the importance of working together.

From experimenting with new libraries to optimizing the complexity of core system functionalities, I got to learn a ton of new stuff. Here are a few from the endless list:

* Learning the importance of generalization in system design and creating scalable components
* Data synchronization over a network with multiple users
* Understanding core concepts of Vue.js (specifically Vue-inline)
* Enhancing my knowledge on JavaScript and it's event loop
* Working extensively with Regular Expression and implementing solutions based on it
* Working with Shell programming for the first time
* Understanding Docker and it's advantages

Coming to my project, I had a lot of fun creating the two new activities. It's almost unbelievable that my code would be used in so many schools in France and all over the world. All in all, it was an amazing experience contributing to Sugar Labs and I hope to continue doing the same after GSoC as well. I'll make sure to help new contributors settle into the environment.

## A message to the community 

I would like to thank the wonderful community of Sugar Labs for helping me with my early contributions and to understand the platform. Special thanks to [James Cameron](https://github.com/quozl) for being a helpful guide, [Ashish Aggarwal](https://github.com/ashish0910) for helping me through the proposal period, and finally [Lionel Laské](https://github.com/llaske) for being the most friendly and understanding mentor. Your constant support and guidance helped me do justice to this project. I have gained knowledge of a lifetime in these few months from you. If it weren't for this community, I might have never started my journey to open-source contributions.

I can't believe this journey has come to an end... But hey, every ending is a new beginning. 

*Cheers!* 🍻
