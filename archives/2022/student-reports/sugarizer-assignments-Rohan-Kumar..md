
<h1 align="center"><img height="50px" width="50px"src="https://user-images.githubusercontent.com/48005711/192225098-47f04ed7-1a27-4ad2-a031-469a15509d8a.png"/>Sugarizer Assignments</h1>

<div align="center">
  <span>Google Summer of Code, 2022 Final Report</span>
  <br>
  <br>
</div>

<div align="center">
  <img height="200px" width="200px" src="https://user-images.githubusercontent.com/48005711/192224558-8479ee0f-2f4d-4b8b-a4e7-ef9a726be6b8.png"/>
  <img height="200px" width="200px" src="https://user-images.githubusercontent.com/48005711/192224568-601ba03a-033f-47f3-ab2b-5eda0fc60688.png"/>
  
</div>

Student Name : Rohan Kumar

Email: rohanrajput16.phy@gmail.com

Github Username: [codebloded](https://github.com/codebloded/)

Mentor: [Nikhil Mehra](https://github.com/NikhilM98) , [Lionel Laské](https://github.com/llaske)

## My Work in Project

My work in the project is to add features which allow teachers to give assignments to students. Assignments are handled by a teacher from the sugarizer-server dashboard. 

My project is divided into two phases:
1. [Sugarizer-server](https://github.com/llaske/sugarizer-server)
2. [Sugarizer](https://github.com/llaske/sugarizer) (Client Application)

I created some APIs for assignment feature in sugarizer-server. Also created some UIs called views in sugarizer-server dashboard to interact with assignments.

## ✔️ Work Completed
### 🟢 Phase 1 Sugarizer-server (Dashboard)

Features Implemented :
- **Create** : Teachers can create assignment in the dashboard.
- **Edit** : A teacher can only edit assignments made by themselves. 
- **Delete** : A teacher can only delete assignments made by themselves.
- **Launch Assignment** : When the teacher launches an assignment, that assignment will go to all the students who are associated with that assignment.
- **Submit Assignment** : This feature is used through the Sugarizer client app, which allows a student to submit their assignments.
- **Return Assignment** : When the teacher returns an assignment for one student, that student can resubmit that assignment.
- **Update Comment** : A teacher can add a comment to give some remarks or grades on a particular delivery.


I have build some Screens in dashboard.
 - Add Assignment
 
   ![add](https://user-images.githubusercontent.com/48005711/192241981-a89e45f9-b710-4a69-88ab-281bf93cb71b.png)

 - Edit Assignment.
  
    ![edit](https://user-images.githubusercontent.com/48005711/192244633-bef6ef7b-5697-4a80-9330-6c757d0a6efc.png)
  
 - List All Assignment.
 
   ![kist](https://user-images.githubusercontent.com/48005711/192245324-3dda4e0a-4348-4707-8710-5e1425d55def.png)
   
  - Actions in List all assignment view.
    
    ![lS](https://user-images.githubusercontent.com/48005711/192514855-4459ab09-4ee1-44af-9aea-94e7f703663b.png)

 - List All Assignment Deliveries.

   ![del](https://user-images.githubusercontent.com/48005711/192245993-a643cfc9-f465-4bd7-8745-7acd9a73a04b.png)
   
   ![Screenshot from 2022-09-27 17-13-32](https://user-images.githubusercontent.com/48005711/192516528-b89d0ddc-270a-4f80-b0f7-a31fe3d65bb8.png)
     - Teachers can check the assignment of any student by clicking on launch assignment delivery button.
     - Teachers can add comments to the students to remark on any particular assignment.
     - This is how a teacher check and add comment on assignment delivery.⬇️
  
     ![mango](https://user-images.githubusercontent.com/48005711/192519428-05566cda-afa0-45cb-9615-5f17389dd5b9.gif)
     
     - Such an assignment can be returned by a teacher to a particular student.
     
     ![ret](https://user-images.githubusercontent.com/48005711/192520120-5e061f1d-4fcd-492a-9165-2469daadf062.gif)
     After returning the delivery of an assignment, the status of that delivery is changed from "Delivered" to "Expected", which means that the                assignment can be submitted again by the student to whom it has been returned.



   Functionalities in dashboard for assignments :
   - Search Assignment and Filter by Status.
      ![Screenshot from 2022-09-27 16-06-28](https://user-images.githubusercontent.com/48005711/192504171-0bbabd17-75b5-489d-834d-25d6ed7ff35e.png)
        - Filter Assignmet by it's name.
        - Filter Assignment by it's status.
        - Also we can filter the assignment by the combination of it's name and it's status. ⬇️
        ![Screenshot from 2022-09-27 16-12-49](https://user-images.githubusercontent.com/48005711/192505350-922c50f6-c2e6-41bd-9ba0-1aacf484e03c.png)
        - There are three types of status with an assignment. ⬇️
        
          ![Screenshot from 2022-09-27 16-15-37](https://user-images.githubusercontent.com/48005711/192505902-4166b612-4aa3-4744-8e9b-0f35cb95b80c.png)
        
   - Restrict to duplicate the assignment entry by journal view in dashboard.
   ![restrict](https://user-images.githubusercontent.com/48005711/192507029-e441d958-ba27-4c99-a88a-49985d0cd631.gif)
   
   **🟣 Pull Request** : [PR #334](https://github.com/llaske/sugarizer-server/pull/334)

 
### 🟢 Phase 2 Sugarizer (Client App).
Assignments shown in Journal view in Sugarizer, where both the journal entry and the assignment entry are listed together.
When the student login to Sugarizer, student will get an Assignment icon show in the toolbar of the Home View on which click which will open the Journal View. ⬇️

![as](https://user-images.githubusercontent.com/48005711/192636984-895105e5-9e8c-4e09-a677-2ed654295358.gif)

**Features Implemented** : 
- List assignments in journal view.

  ![Screenshot from 2022-09-28 02-50-07](https://user-images.githubusercontent.com/48005711/192637754-7292195b-7899-4e76-a422-c7baec24f9e9.png)

  ![Screenshot from 2022-09-28 03-02-44](https://user-images.githubusercontent.com/48005711/192639735-d04e504d-a709-459d-bb74-4196cf566441.png)
    * Assignment icon : Assignment icon has been placed so that it can be seen that this is an assignment entry.
    * See instructions : Created a popup to see the instructions for the assignment
    * 
      ![ins](https://user-images.githubusercontent.com/48005711/192640696-b8369915-8c0f-44d6-bc55-296856e960fd.gif)
    * Due Date : Last date to submit the assignment.
 
- Filter assignment.

  Filter Assignment button filters the assignments by journal and displays all the assignment entries. So, student can easily deifferentiate between the   assignment and journal.
  
   ![fil](https://user-images.githubusercontent.com/48005711/192642047-6e2d81ee-d291-49f0-8e97-12adafdfba67.gif)

- Forbid Actions.
Implemented some forbid action like:
  * Duplicate : Students can't duplicate an assignment entry using the feature that is used to duplicate the journal entry.
  * Copy : Student can't copy the assignment entry.
  * Delete : Can't delete the assignment entry.
  
  Working ⬇️
  
  ![for](https://user-images.githubusercontent.com/48005711/192648753-aa655490-f8b9-4428-b9cb-b9a7fae768a3.gif)

- Sort by Due Date :
  This feature sorts the assignments by their due date. So that the student can sort and check which assignment due date is near.
  
  ![Screenshot from 2022-09-28 04-12-58](https://user-images.githubusercontent.com/48005711/192650473-3818459b-64e2-40c1-88a0-4f6a37e20eff.png)
  
 **🟣 Pull Request** : [PR #1092](https://github.com/llaske/sugarizer/pull/1092)

### 🟠 Miscellaneous work.

- Documentation of APIs.
- Tests for APIs


## My Experience

My overall GSoC'2022 experience was very thrilling. I made small changes to understand the code base and build my project Sugarizer assignments.
While doing this project, I learned to write high-quality code that fulfills all the project’s goals. I learned a lot of new libraries and worked on them. It was an amazing experience to write code that will be used by thousands of people around the world. Special thanks to my mentors [Nikhil Mehra](https://github.com/NikhilM98) and [Lionel Laské](https://github.com/llaske) for helping me get a good grasp of codebase in the early stages and also throughout the project.


    









