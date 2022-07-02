# 1 Generating NPCs

## 1.1 Brief Description
To generate friendly and hostile NPCs with default templates and the availability to add different capabilities for critical NPCs.

# 2 Flow of Events
## 2.1 Basic Flow
- Player leaves room
- if NPC Dead, spawn NPC

### 2.1.1 Activity Diagram
![Generating NPC Activity Diagram](https://albgei.github.io/gamedevs/UCs/UC6%20Activity%20Diagram.png)

### 2.1.2 Mock-up
![Generating NPC Mock-up](https://albgei.github.io/gamedevs/UCs/UC6%20Mark-up.jpg)

### 2.1.3 Narrative
```gherkin
@npc @generation
Feature: generating NPC
  Background:
     Given  Game is active

  Scenario: spawn NPC in new room
     Given NPC spawnpoint in room A
     And   I (player) enter room A
     When  I press noting
     Then  spawn NPC
     
 Scenario: spawn NPC in spawn zone
     Given NPC spawn zone in room A
     And   I (player) am in room A
     When  Timer hits zero
     Then  spawn NPC
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
