# Art+Game - Software Architecture Documentation

## 1. Introduction

### 1.1 Purpose

This document provides a comprehensive architectural overview of the system, by using several architectural views to depict different aspects of the system. It is intended to capture and convey the significant architectural decisions which have been made on the system.

### 1.2 Scope

This document describes the architecture of the Art+Game Project.

### 1.3 Definitions, Acronyms, and Abbreviations

| **Abbreviation** |                |
| ---------------- | -------------- |
| N/A              | Not applicable |

### 1.4 References

| **Title**                                                                                                                 |
| -----------------------------------------------------------------------------                                             |
| [**Art+Game Blog**](https://albgei.github.io/gamedevs/)                                                                   |
| [**Software Requirements Specification**](https://albgei.github.io/gamedevs/SRS)   |

### 1.5 Overview

The following sections describe the architectural details of Art+Game.
This document does not describe functionality made available by Unity but rather describes the original code of this project.

## 2. Architectural Representation

Unity utilizes what's called component architecture. Every game object can be deployed any and as many components as necessary. Each component now represents one functionality that it adds to the game object. Ideally, each component should be it's own system and not depend on another one.

## 3. Architectural Goals and Constraints

This component-based architecture, if properly executed, allows for a very clear and easy handling with functionality, that every object can be deployed with. It also allows for good scalability of the games scope with components being reusable for many different objects and game events.

## 4. Use-Case View

Below, you can find the overall use case diagram that shows all use cases the application should provide.

![UCD](https://albgei.github.io/gamedevs/UCD.PNG)

Here you can find the various use case specification documents:

- [Use Case 1: Player Movement](https://albgei.github.io/gamedevs/UCs/UC1_Player_Movement)
- [Use Case 2: World Interaction](https://albgei.github.io/gamedevs/UCs/UC2_World_Interaction)
- [Use Case 3: Generating NPCs](https://albgei.github.io/gamedevs/UCs/UC3_Generating_NPCs)
- [Use Case 4: NPC Interaction](https://albgei.github.io/gamedevs/UCs/UC4_NPC_Interaction)

## 5. Logical View

### 5.1 Overview

![Component Architecture Logical View](https://github.com/GyroInc/gyrogame-unity/blob/master/Documentation/images/ComponentLogicalView.svg)

### 5.2 Architecturally Significant Design Packages

![Class Diagram]()

## 6. Process View

N/A

## 7. Deployment View
This is our deployment diagram. The client computer will have the game binaries and game files such as save-games or highscores deployed on it.
![Deployment View](https://albgei.github.io/gamedevs/Pictures/Deployment.PNG)

## 8. Implementation View

N/A

## 9. Data View

The only persistent data stored for the game are:

- Save files to store player progress
- Game settings (e.g. mouse speed)

These are being handled by Unity's internal PlayerPrefs.

## 10. Size and Performance

N/A

## 11. Quality

Unity recommends the component architecture to be used in the development of an application. Therefore the quality is at its best choosing this architecture.

- [back](https://albgei.github.io/gamedevs/blog-2021-12-02)

<script src="https://utteranc.es/client.js"
        repo="albgei/gamedevs"
        issue-term="pathname"
        label="commentary_"
        theme="github-dark"
        crossorigin="anonymous"
        async>
