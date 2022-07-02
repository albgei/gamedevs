# 1 Connect Rooms

## 1.1 Brief Description
This will allow the player to move between different areas called rooms by moving into the entering zone.

# 2 Flow of Events
## 2.1 Basic Flow
- if player in entering zone, move player to next room.

### 2.1.1 Activity Diagram
![NPC Interaction Activity Diagram](https://albgei.github.io/gamedevs/UCs/UC4%20Activity%20Diagram.png)

### 2.1.2 Mock-up
![NPC Interaction Mock-up](https://albgei.github.io/gamedevs/UCs/UC4%20Mark-up.jpg)

### 2.1.3 Narrative
```gherkin
@player @movement
Feature: Moving to a new Room
  Background:
     Given  I am in a room
     And    Game is active
     And    There is a room change trigger

  Scenario: not moving
     Given I am at position
     When  I press noting
     Then  nothing

  Scenario: not moving toward trigger
     Given I am at position
     When  I press w/a/s/d
     And  I am at newPosition != trigger.position
     Then nothing

  Scenario: moving toward trigger
     Given I am at position
     When  I press w/a/s/d
     And  I am at newPosition = trigger.position
     Then change location to new room

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
