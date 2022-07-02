# 1 NPC Decision Making

## 1.1 Brief Description
Gives NPCs the ability to navigate the world and path find specific targets, for example the player.

# 2 Flow of Events
## 2.1 Basic Flow
- If player in detection range
- set target
- move to target

### 2.1.1 Activity Diagram
![NPC Interaction Activity Diagram](https://albgei.github.io/gamedevs/UCs/UC5%20Activity%20Diagram.png)

### 2.1.2 Mock-up
![NPC Interaction Mock-up](https://albgei.github.io/gamedevs/UCs/UC5%20Mark-up.jpg)

### 2.1.3 Narrative
```gherkin
@npc @movement
Feature: Finding target location
  Background:
     Given  I (NPC) am in a room
     And    Game is active
     And    There is no obstacle

  Scenario: Target player
     Given Player in detection range
     When  I press noting
     Then  set target player.position

  Scenario: not moving toward trigger
     Given Player not in detection range
     And   I do not have patrol point
     When  I press noting
     Then nothing

  Scenario: Target patrol point
     Given Player not in detection range
     And   I have patrol point
     When  I press noting
     Then  set target patrol point.position
```

## 2.2 Alternative Flows
(n/a)

# 3 Special Requirements
(n/a)

# 4 Preconditions
(n/a)

# 5 Postconditions
(n/a)
 
# 6 Extension Points
(n/a)

- [back](https://albgei.github.io/gamedevs/blog-2021-10-28)




<script src="https://utteranc.es/client.js"
        repo="albgei/gamedevs"
        issue-term="pathname"
        label="commentary_"
        theme="github-dark"
        crossorigin="anonymous"
        async>
