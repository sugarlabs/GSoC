# Sugar on Raspberry Pi

## Final Report Submission

<p align="center">
<img src="https://github.com/drLite35/GSOC-2024/blob/main/SugarLabs/image.png" alt="Sugar on Raspberry Pi">
</p>

---

## Contributor Info

### Name:
- **Anurag Singh**

### Contact:
- **Email:** prinicipalquantum30@gmail.com
- **GitHub Profile:** [drLite35](https://github.com/drlite35)
- **Matrix Username:** Anurag Singh (Ovalelephant)

---

## Mentor Info

### Mentor:
- **Walter Bender**

### Assisting Mentor:
- **Chihurumnaya Ibiam**

---

## Project Details

The project aims to optimize Sugar for Raspberry Pi to engage the Maker community effectively. This includes seamless integration, packaging for inclusion in RPi OS images, and enhancing Sugar activities like Turtle Blocks, Measure, and Pippy to leverage RPi sensors efficiently.

### GSOC Project Page
- [Sugar On Raspberry Pi](https://summerofcode.withgoogle.com/programs/2024/projects/zeLXKHVh)

### GSOC Blogs

| Weekly Update |
|---------------|
| **[Week 1-2](https://medium.com/@principalquantum30/getting-started-with-gsoc-at-sugar-labs-c9d5db78167a)** |
| **[Week 3-4](https://medium.com/@principalquantum30/gsoc-with-sugarlabs-coding-phase-ii-week-3-4-1db73480b68d)** |
| **[Week 5-6](https://medium.com/@principalquantum30/gsoc-with-sugarlabs-coding-phase-iii-week-5-6-8745a19b2fd3)** |
| **[Week 7-8](https://medium.com/@principalquantum30/gsoc-with-sugarlabs-coding-phase-iv-week-7-8-65a09e0ad623)** |
| **[Week 9-10](#)** |
| **[Week 11-12](#)** |

### YouTube Streams

[Final Presentation](https://www.youtube.com/watch?v=d0nTfKmOWl8&t=2s)

## Work Summary

### The RPi Control Center (RPiCC)
The RPi Control Center is a versatile application developed for Raspberry Pi on Sugar to simplify the management and monitoring of various system functions. It provides a user-friendly interface that allows users to view critical system information, including CPU usage, memory utilization, and disk space. It also features process management tools and network monitoring capabilities, along with GPIO pin management for hardware control.

### [Final Work](https://github.com/drLite35/rpi_control_center)

<img src="https://github.com/drLite35/GSOC-2024/blob/main/SugarLabs/image2.png" alt="RPi Control Center">
<img src="https://github.com/drLite35/GSOC-2024/blob/main/SugarLabs/image3.png" alt="RPi Control Center">



### The RPi Sensors Activity
The RPi-Sensors project integrates and manages various sensors on the Raspberry Pi, simplifying sensor-based applications. The goal is to provide a user-friendly platform for collecting data from sensors like the HC-SR04 Ultrasonic sensor and the DHT11 Temperature and Humidity sensor. The project includes detailed Python scripts for easy customization.

### [Final Work](https://github.com/drLite35/RPi-Sensors)

<img src="https://github.com/drLite35/GSOC-2024/blob/main/SugarLabs/image4.png" alt="RPi Control Center">

### RPi Docs

In the RPi-Docs repository, I aimed to create a comprehensive resource for Raspberry Pi users by providing detailed documentation and guides that cover various aspects of working with Raspberry Pi devices. I started by outlining the installation process, including how to set up the Raspberry Pi OS, connect peripherals, and configure the device for first-time use. Additionally, I documented the use of GPIO pins, offering step-by-step tutorials for interacting with hardware components such as sensors and displays. Each guide includes code snippets, practical examples, and troubleshooting tips to help users navigate common challenges. I also integrated best practices for using popular software applications and libraries, ensuring that both beginners and experienced developers can easily access the information they need. By consolidating essential resources in one place, I hope to empower the Maker community to effectively leverage Raspberry Pi for innovative projects and enhance their skills in hardware and software development.

[Final Work](https://github.com/drLite35/RPi-Docs)

### RPi Camera

In the rpi_camera_activity repository, I developed a versatile activity for Raspberry Pi that enables users to capture images and stream video using the Pi Camera. My approach began with detailed documentation on installing and configuring the Pi Camera module, ensuring that users can easily set up their hardware and software environment.

[Final Work](https://github.com/44yu5h/rpi_camera_activity)

<img src="https://github.com/drLite35/GSOC-2024/blob/main/SugarLabs/image5.png" alt="RPi Control Center">

### Turtle Art Activity

Developed a plugin extension for Turtle Blocks that provides blocks to interact with the Ultrasonic Distance Sensor. These blocks can include functionalities such as reading distance values and triggering actions based on proximity.


### RPi Customized OS for Sugar Labs

In the development of the Raspberry Pi OS and preinstalled activities such as Flappy, RPI Control Center, Number Guessing, Tower of Hanoi, Turtle Art, and the default activities (Calculate, Chat, Image Viewer, Pippy, Read, Terminal, Write, and Browse), I was actively involved in various stages of the project. My contributions included troubleshooting and testing the functionality of each activity to ensure a seamless user experience.

To generate a custom operating system, I outlined the necessary steps for users to follow, emphasizing the need for a "Raspberry Pi Lite OS 32-bit" installation. I detailed the process of cloning the repository on the Raspberry Pi, installing dependencies, and executing the build script. Additionally, I provided instructions for using Docker as an alternative for building the OS.

Once the image is built, I explained how to flash it onto a microSD card using the rpi-imager, ensuring users set the required username and password under the advanced options. Throughout this process, I engaged in the idea phase, collaborating on development strategies and refining the setup of Sugar on top of the RPi-Lite OS. My goal was to create an accessible and functional environment that encourages exploration and creativity with the Raspberry Pi.

[Final Work](https://github.com/44yu5h/sugar-rpi-os)

### Making Videos Content and Reaching Community

I created several thumbnails, wrote articles, and produced videos to engage the Maker community effectively. My focus was on delivering valuable content that highlights the capabilities of Raspberry Pi and the projects developed within our ecosystem. Many of these materials are already in the pipeline, aimed at providing insights, tutorials, and inspiration for users at all skill levels. Through this content, I hope to foster a sense of community and encourage collaboration among makers, empowering them to explore their creativity and enhance their technical skills.


## Issues Worked On in whole Journey

| Issue # | Description                                           |
|---------|-------------------------------------------------------|
| [#6](https://github.com/44yu5h/rpi_control_center/issues/6) | ImportError : Cannot import name 'Window'|
| [#131](https://github.com/sugarlabs/browse-activity/issues/131) | Fix Sugar Browser activity failure on RPi.            |
| [#13](https://github.com/sugarlabs/panorama/issues/13)  | Panorama activity ported to Python3                   |
| [#2](https://github.com/sugarlabs/pyeyes-activity/issues/2)   | PyEyes activity ported to Python3                     |
| [#19](https://github.com/sugarlabs/cardsort/issues/19)  | Fix CardSort activity failure on RPi.                 |
| [#20](https://github.com/sugarlabs/Measure/issues/20)  | GPIO and Sensor Support for RPi           |
| [#6](https://github.com/sugarlabs/RPi-Docs/issues/6)  | Tutorial Videos for Setting Up Sugar on RPi.                         |
| [#7](https://github.com/sugarlabs/RPi-Docs/issues/7)  | Document setting up sensors as well information regarding plugins/extension on RPi for various activities                   |
| [#17](https://github.com/sugarlabs/classify-cats/issues/17) | Update Readme , Increase Cooldown timer and in-game with each level|
| [#16](https://github.com/sugarlabs/classify-cats/issues/16) | Game Starts At level 2 instead of level 1 |
| [#8](https://github.com/sugarlabs/RPi-Docs/issues/8) | Opportunity for documenting More SBC's |

---

## Pull Requests Made in whole journey

| Pull Request # | Description                                                               |
|----------------|---------------------------------------------------------------------------|
| [#2](https://github.com/44yu5h/rpi_camera_activity/pull/2) | feat: Add error handling for camera initialization. |
| [#3](https://github.com/drLite35/RPi-Sensors/pull/3) | Add : UV sensor , Motion Sensor , Humidity Sensor |
| [#9](https://github.com/44yu5h/rpi_control_center/pull/9) | Docs : Update Readme file and fix several flake8 |
| [#3](https://github.com/44yu5h/rpi_camera_activity/pull/3) | Docs: Update Readme file |
| [#21](https://github.com/sugarlabs/2-cars-activity/pull/21) | Fix Flake8 and Add .flake8 file. |
| [#2](https://github.com/sugarlabs/RPi-Docs/pull/2)         | Added an installation instruction file for Raspberry Pi.                 |
| [#3](https://github.com/sugarlabs/RPi-Docs/pull/3)         | Added a Virtual Machine guide and a Hardware Guide for Raspberry Pi.     |
| [#4](https://github.com/sugarlabs/RPi-Docs/pull/4)         | Updated documentation to include auto-logging and Desktop Image info.    |
| [#5](https://github.com/sugarlabs/RPi-Docs/pull/5)         | Added Rpi-soas.md, a guide for Fedora Sugar on a Stick (SoaS) on Raspberry Pi. |
| [#982](https://github.com/sugarlabs/sugar/pull/982)       | Modified Raspberry Pi documentation in Sugar to include RPi-docs.       |
| [#36](https://github.com/sugarlabs/finance-activity/pull/36)        | Added labels to the pie chart for better clarity in the finance activity. |
| [#3](https://github.com/sugarlabs/pyeyes-activity/pull/3)         | Ported the PyEyes activity to Python 3.                                  |
| [#20](https://github.com/sugarlabs/cardsort/pull/20)        | Resolved the issue preventing the opening of the Cardsort activity.      |
| [#8](https://github.com/sugarlabs/mastermind-activity/pull/8)        | Merge Developer's Commits and Reapply Own Changes.                                |
| [#4](https://github.com/sugarlabs/Simplegraph/pull/4)        | Update README to inform users about duplicate repository                  |


many more PR are generated and are under review

## Further Work and Conclusion

I will continue contributing to this organization in the coming months. There are contents already in the pipeline that will be released, and some activities are in the idea phase for development.

This summer has been a great experience working with Sugar Labs. I learned and coded across various fields, from RPi to OS to content creation and hardware. It has been a very enriching experience, and I am truly grateful for this opportunity.
