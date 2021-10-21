# Common Playground - Software Requirements Specification 

## Table of contents
- [Table of contents](#table-of-contents)
- [Introduction](#1-introduction)
    - [Purpose](#11-purpose)
    - [Scope](#12-scope)
    - [Definitions, Acronyms and Abbreviations](#13-definitions-acronyms-and-abbreviations)
    - [References](#14-references)
    - [Overview](#15-overview)
- [Overall Description](#2-overall-description)
    - [Vision](#21-vision)
    - [Use Case Diagram](#22-use-case-diagram)
	- [Technology Stack](#23-technology-stack)
- [Specific Requirements](#3-specific-requirements)
    - [Functionality](#31-functionality)
    - [Usability](#32-usability)
    - [Reliability](#33-reliability)
    - [Performance](#34-performance)
    - [Supportability](#35-supportability)
    - [Design Constraints](#36-design-constraints)
    - [Online User Documentation and Help System Requirements](#37-on-line-user-documentation-and-help-system-requirements)
    - [Purchased Components](#purchased-components)
    - [Interfaces](#39-interfaces)
    - [Licensing Requirements](#310-licensing-requirements)
    - [Legal, Copyright And Other Notices](#311-legal-copyright-and-other-notices)
    - [Applicable Standards](#312-applicable-standards)
- [Supporting Information](#4-supporting-information)

## 1. Introduction

### 1.1 Purpose
This Software Requirements Specification (SRS) describes all specifications for the application "(Game Title tba) by Art+Game". It includes a comprehensive description of the expected functions of the project, as well as non-functional requirements. These are essential for establishing an understanding between software vendors and customers and minimizing the risks associated with misunderstanding customer expectations. In addition, this document will provide a basis for cost estimation and subsequent verification of the results obtained.


### 1.2 Scope
The project is going to be realized as an Pc Application.  
  
Actors of this App can be users.  
  
Planned Subsystems are: 
* Open World:  
The player will be able to move around freely in a "vast and rich" open world. During exploration of the open world the player can encounter different enemies
and allies aswell as various main- and sidequests.
* Quest System:
Tracks the progress of the quest progression and auto-generates repeatables.
* Storing Data:  
User data for accounts and possibly profiles must be stored. In addition, the game session must be stored as a data set containing form content and possible contact data. Data storage will form the basis of visualization, account systems and search functions.
* Progression System:  
According to your level ingame, the enemys will get stronger and harder to beat. This way it can be ensured that the start will not be too hard and you dont
just steamroll the endgame.
* Character Development System:
During the game the player will be able to level up and improve their characters abilitys and statistics.

### 1.3 Definitions, Acronyms and Abbreviations
| Abbrevation | Explanation                            |
| ----------- | -------------------------------------- |
| SRS         | Software Requirements Specification    |
| UC          | Use Case                               |
| n/a         | not applicable                         |
| tba         | to be announced	                       |
| UCD         | overall Use Case Diagram               |
| FAQ         | Frequently asked Questions             |

### 1.4 References

| Title                                                              | Date       | Publishing organization   |
| -------------------------------------------------------------------|:----------:| ------------------------- |
| [Art+Game Blog](https://github.com/albgei/gamedevs/index)          | 21.10.2021 | Art+Game Team    	      |
| [GitHub](https://github.com/albgei/gamedevs)		             | 21.10.2021 | Art+Game Team   	      |


### 1.5 Overview
The next chapter outlines the project with a vision and Overall Use Case Diagram. Chapter 3 (Requirements Specification) provides more detailed information about specific requirements in terms of functionality, usability, and design parameters. The last chapter provides supporting information. 
    
## 2. Overall Description

### 2.1 Vision
Inspired by games like 'The Legend of Zelda', 'The Elder Scrolls' and 'Heroes of Hammerwatch' we aim to create a top view game with several
quests and a free to explore open world with some instances. Our ambition is to create a compelling and fun gaming experience for our players.

### 2.2 Use Case Diagram

![OUCD](https://github.com/IB-KA/CommonPlayground/blob/master/UseCaseDiagramCP.png)

- Green: Planned till end of december
- Yellow: Planned till end of june

### 2.3 Technology Stack
The technology we use is:

Backend:
-Unity Engine

Frontend:
-Unity Engine

IDE:
-Unity, Visual Studio (Code)

Project Management:
-YouTrack
-GitHub
-Discord

Deployment:
-Unity

Testing:
-Unity
-Unity Test Framework
-Integrated in Visual Studio

## 3. Specific Requirements

### 3.1 Functionality
This section will explain the different use cases, you could see in the Use Case Diagram, and their functionality.  
Until December we plan to implement:
- 3.1.1 Player Movement
- 3.1.2 World Interaction
- 3.1.3 Generating NPCs
- 3.1.4 NPC Interaction
- 3.1.5 Character Progression

Until June, we want to implement:
- 3.1.6 NPC Movement
- 3.1.7 Generating Dungeons
- 3.1.8 Accepting Quests
- 3.1.9 

#### 3.1.1 Player Movement
This will ensure that the Player will be able to execute basic movements such as walking up,down,left and right in order to explore the world.
These controls will be explained at the start of the game.

[Player Movement](./use_cases/UC1_Player_Movement.md)

#### 3.1.2 World Interaction
This feature is to allow the player to interact with the surrounding world in various means, for example attack, defend or read signs.

[World Interaction](./use_cases/UC2_World_Interaction.md)

#### 3.1.3 Generating NPCs
To generate friendly and hostile NPCs with default templates and the availability to add different capabilities for critical NPCs.

[Generating NPCs](./use_cases/UC3_Generating_NPCs.md)

#### 3.1.4 NPC Interaction
This will allow the player to interact with numerous NPCs in order to start dialogues or to give the NPC 
the ability to interact with the world just like the player does.

[NPC Interaction](./use_cases/UC4_NPC_Interaction.md)

#### 3.1.5 Character Progression
To implement a RPG typical user interface to allow the player to upgrade their 
characters statistics and to unlock new abilities aswell as equip the character with diverse items.

[Character Progression](./use_cases/UC5_Character_Progressiont.md)

#### 3.1.6 NPC Movement
Gives NPCs the ability to navigate the world and path find specific targets for example the player.

[NPC Movement](./use_cases/UC6_NPC_Movement.md)

#### 3.1.7 Generating Dungeons
To generate an instance dungeon from several assets and room layouts.
[Generating Dungeons](./use_cases/UC7_Generating_Dungeons.md)

#### 3.1.8 Accepting Quests
Will give the player the ability to accept and start various quests.

[Accepting Quests](./use_cases/UC8_Accepting_Quests.md)

### 3.2 Usability
We plan on designing a self explanatory game with a few ingame explanations to make sure that the player will be advised about the 
basic controls of the game.

#### 3.2.1 Getting better over Time
We aim to create a game in which the player will get better and more skillfull over time to increase the interest in the game over time.

#### 3.2.2 A subtle introduction
We want to start the game with a few and easy to understand quests to introduce the player to the game and its basic functionalities.

### 3.3 Reliability

#### 3.3.1 Availability
The Game will be offline and therefore can be played whenever desired. Support for the game will be available for Windows only.

#### 3.3.2 User feedback page
We will provide a page for the user/player to give feedback or report any bugs or glitches for us to fix.

### 3.4 Perfomance

#### 3.4.1 Storage 
The game shouldnt take too much space, but our goal is not particulalry to make it lightweight.

#### 3.4.2 App perfomance / Response time
We aim to make our game run flawlessly on almost every modern computer system with the operating system Windows 10 or newer.

### 3.5 Supportability

#### 3.5.1 Coding Standards
We will use all the most common clean code standards provided by Microsoft to write code. For example, we will name variables and methods by function. This will make it easy for everyone to read the code and make further development easier.

#### 3.5.2 Testing Strategy
The game will be tested using playability tests and function tests. These will be done using either the integrated function of Unity or by copy pasting the critical code into a new project that supports MS Unit Tests or similar.

### 3.6 Design Constraints
We will be using Pixel-Art for the most of the game which will include downloaded assets aswell as hand drawn assets.

The goal will be to limit the design decisions in order to make the game run smoothly on as many sytems as possible.

### 3.7 On-line User Documentation and Help System Requirements
The usage of the app should be as intuitive as possible so it won't need any further documentation. If the player needs any help we will include a help window in the escape menu of our game.

### 3.8 Purchased Components
Our game will be free to play for now.

### 3.9 Interfaces

#### 3.9.1 User Interfaces
The User interfaces that will be implented are:
- In game GUI - tbd
- Settings - shows the settings

#### 3.9.2 Hardware Interfaces
(n/a)

#### 3.9.3 Software Interfaces
The app will be runnable on Android 4.4 and higher. iOS won't be featured at the moment.

#### 3.9.4 Communication Interfaces
The server and hardware will communicate using the http protocol. 

### 3.10 Licensing Requirements

### 3.11 Legal, Copyright, and Other Notices
The logo is licensed to the Common Playground Team and is only allowed to use for the application. We do not take responsibilty for any incorrect data or errors in the application.

### 3.12 Applicable Standards
The development will follow the common clean code standards and naming conventions. Also we will create a definition of d which will be added here as soon as its complete.

## 4. Supporting Information
For any further information you can contact the Art+Game Team or check our [Art+Game Blog](https://github.com/albgei/gamedevs/index). 
The Team Members are:
- Danilo Mischke
- Beraat Tasdelen
- Albert Geisbauer
- Eduard-Mihai Badacin
<!-- Picture-Link definitions: -->
[OUCD]: https://github.com/IB-KA/CommonPlayground/blob/master/UseCaseDiagramCP.png "Overall Use Case Diagram"

.

- [back](https://albgei.github.io/gamedevs/index)



<script src="https://utteranc.es/client.js"
        repo="albgei/gamedevs"
        issue-term="pathname"
        label="commentary_"
        theme="github-dark"
        crossorigin="anonymous"
        async>
