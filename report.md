# Smiling Banana Cleaning Director
Title page: BananaCleaningDirector Report, Team Name:BillCollectors, Authors:Maxim Rao, Stefan Prodanovic, Samir El Mehtedi, Taj Mailei

**1. Introduction - MAXIM**
Our given topic was Banana, Cleaning and Director. So we decided to create a game that involved a Banana character, who has to clean various parts of the screen in a given amout of time, in the corner there is a second banan character, who smiles when a dirt spot is cleaned. The program will be a fun and interactive game for the player. The user can expect to use his mouse to click and intercat with elements on the screen, intercating with these elemtents will add to the score, which will them cause the game to end. 


**2. User Stories and Requirements**
-Maxim- The user controls a banana shaped character who has to clean areas of the screen. The way this will be done is through the user, who has to click on various "dirty" parts of the screen. After each spot is cleaned, a second banana in the corner will smile to indicate that a succcess has occured. This will add to the score, and if the score is reached within a set amount of time a "Success" screen will come up, and the another key will be pressed to restart the game. 

The acceptance tests for this will be, 

1: To have a charcter that resembles a banana,

2: For the player to be able to clikc and "clean" dirty parts of the screen,

3: For a score counter to accuractly store the amount of spots cleaned,

4: A working timer that ends, 

5: A success screen which can restart the game:

-**Stefan- User Story**:
The user controls a banana-shaped janitor who must rapidly remove gum stuck to desks in a chaotic school hallway. A second banana, who is the principal smiles when the each gum piece is cleaned. The user clicks on gum blobs while avoiding getting stuck themselves.
Acceptance Tests: 

1:A banana character is visible and movable along the hallway.

2:Gum blobs randomly appear and can be clicked to be removed.

3:If the banana steps on gum without cleaning it first, the character is slowed for 3 seconds.

4:Each gum blob cleaned adds 1 point to the score counter.

5:A success screen appears when all gum blobs are cleaned within 60 seconds, with an option to restart the level.

**Taj - User Story**
The user controls a banana in a luxury hotel, tasked with cleaning mirrors with a smiling spirit without leaving streaks. The player clicks and drags over smudges to polish them before time runs out.

Acceptance Tests:

1: The banana character is displayed in front of a background filled with mirrors.

2: Smudges on the mirrors can be cleaned by clicking and dragging over them.

3: A visible cleaning streak appears while polishing and disappears once the smudge is fully cleaned.

4: A progress meter indicates how close the player is to fully cleaning a mirror.

5: A timer counts down from 45 seconds, and a success screen appears once all mirrors are cleaned.

**-Samer-User Story:**
The user controls a banana who must mop up colourful drink spills in a food court. The other bananas , are sad when the floors are dirty, when they are cleaned by the player, the other bananas smile. Players must react quickly, clicking on the spills before time runs out.

Acceptance Tests:

The banana character is visible in a mall food court setting.

Random spills appear.

Clicking on a spill cleans it and adds to the score.

The game ends when spills are left uncleaned, and a retry button reappears.


**3. Design and Architecture - TAJ**
Include a graphical representation of the architecture of your program, illustrating how its primary components relate to each other. You may omit certain details to ensure clarity in the diagram. It is meant to give an overview.**
**Explain, your diagram, and include a key/legend.
![IMG_4153](https://github.com/user-attachments/assets/91b71110-b8c5-42c6-b8f3-4f6fde0425e6)





**4. Testing User Acceptance Tests - MAXIM - TAJ**
   User Story 1:
The user controls a banana-shaped character who has to clean areas of the screen by clicking on dirty parts.
Acceptance Criteria:

A banana-shaped character should be visible on screen.
Clicking on "dirty" parts of the screen should clean them.
A score counter should update every time a dirty part is cleaned.
A timer should count down and trigger a success screen when time runs out.
A restart option should appear after success.

User Story 2:
Different types of dirt (e.g., slime, dust, mud) should appear, and each requires a correct cleaning action to be removed.
Acceptance Criteria:
Different types of dirt (slime, dust, mud) should appear on the screen.
The user should click the dirt to clean it, and only the correct dirt type should be cleaned.
The score counter should only increase when the correct dirt is cleaned.

User Story 3:
A timer counts down, and the game should trigger a success screen when the user cleans enough spots before time runs out.
Acceptance Criteria:
A timer counts down from a set time.
A success screen appears when the score goal is reached within the timer.
A restart button is available on the success screen.


User Acceptance Tests
Test Case	User Story	Test Description	Expected Outcome	Result (Pass/Fail)

Test 1	User Story 1	Verify banana character appears on screen	Banana-shaped character is visible and clickable:	Pass

Test 2	User Story 1	Verify cleaning of dirty spots increases score	Clicking on dirty spots increases score counter:	Pass

Test 3	User Story 1	Verify timer countdown	Timer counts down and triggers a "Success" screen when time ends	Pass:

Test 4	User Story 2	Verify different dirt types are cleaned correctly	Clicking on slime, mud, and dust should clean the correct dirt:	Pass

Test 5	User Story 2	Verify incorrect dirt type cannot be cleaned	Clicking on incorrect dirt type should not increase score:	Pass
   
Test 6	User Story 3	Verify success screen appears on time out	Timer runs out and success screen appears when the goal is met:	Pass

Test 7	User Story 3	Verify restart option on success screen	Restart button appears and works after success screen	Pass:




– Define test cases for user stories and requirements that your team decided to test as part of user acceptance testing. Ensure that these tests cover the most important aspects of the two programs.
– List the user stories and requirements that were the source for the user acceptance tests.
– Include a table that gives an overview of the acceptance tests and tells whether they passed or
failed. System Tests
– Include a table that lists the system tests, that weren’t acceptance tests. These are tests that run the entire program, and are executed by the team to test features they added themselves.
– Include in that table the outcome for each system test, including an overview of the test and whether it passed or failed.
Unit **Tests**
*– Select at least four sub-components of your animation.
– Include a table of lists for each component of their unit tests. Include the test inputs, the expected
output/outcome, and whether the test failed or passed.



**5. Coding Guidelines Define the coding guidelines your team adhered to during the project.-Samer**
 
  Our team adhered to standard Processing coding practices, including:
-Consistent indentation and spacing
-Clear and descriptive variable names
-Use of comments to explain complex code sections
-Organization of code into logical functions and classes

We also followed best practices for collaborative coding, such as using GitHub for version control and reviewing each other's code before merging changes. 
**6. Software Quality - TAJ**
    No issues were logged since the workflow was set up after everything was already wrapped up.
That said, a few improvements were made from week 8 onwards:
- Cleaned up variable names to keep things consistent and easier to read.
- Added comments to trickier bits of code to make it clearer for anyone jumping in later.
- Got rid of some unnecessary code to help things run a bit more smoothly.

**7. Project Management -SAMER**
   Our project board consists of the following tasks and issues:
-Implement Banana Character: Assigned to Maxim Rao, reviewed by Stefan Prodanovic through GitHub Pull Request Review.
-Create Dirt Particles: Assigned to Samer El Mehtedi, reviewed by Taj Mailei through Peer Review and Discussion.
-Design Game Architecture: Assigned to Taj Mailei, reviewed by Maxim Rao through Collaborative Discussion and Feedback.
-Write User Manual: Assigned to Maxim Rao, reviewed by Samer El Mehtedi through Document Review and Feedback.
-Develop Timer Functionality: Assigned to Stefan Prodanovic, reviewed by Maxim Rao through Code Review via GitHub.
-Test Game Features: Assigned to the entire team, reviewed through Collaborative Testing and Feedback.
  
   Review Process:
-Code Reviews: Conducted through GitHub pull requests, ensuring at least one team member reviewed and approved changes before merging.
-Task Reviews: Tasks were reviewed based on completion criteria and functionality, with feedback provided to ensure quality and accuracy.
   
   Roles and Responsibilities:
-Maxim Rao: Lead Developer, User Manual Writer
-Stefan Prodanovic: Developer, Code Reviewer
-Samer El Mehtedi: Developer, Dirt Particle Implementation
-Taj Mailei: Architect, Game Design Lead

This project management approach ensures clear task assignments, thorough reviews, and collaborative feedback, contributing to a well-organized and successful project.

**8. User Manual Provide a detailed user manual that describes how to interact with your animation. - STEFAN**
- Movement: Use the mouse to move the banana and clikc on dirty spots found on the screen!
- How to win: Win the game by cleaning every single dirty spot found on screen.
- How to loose: The game is lost if the timer runs out before you clean all of the spots.
- Banana Director in the corner will each time you pickup the dirt, to make sure that you are completeing the game successfully. 
    
**9. Ethics - STEFAN**

External Sources:

We used a few straightforward, openly accessible tools to help us understand what function to use and how they can help our game funtion. 

Our main resource for learning how to use built-in functions like ellipse(), rect(), fill(), mousePressed(), and keyPressed() was the Processing Language Reference. We frequently used this website to learn how to apply random values and recognise user input.

Source: https://processing.org/reference

Tools Used:
We used the following in addition to the necessary tools (Processing, Git, GitHub, and typical word processing applications):

For creating and working together on the written report, we used GitHub itself. Every team member made an online contribution to this document.





