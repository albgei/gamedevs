# 1 Character Progression

## 1.1 Brief Description
Allows the player to aquire experience points and level up. 

# 2 Flow of Events
## 2.1 Basic Flow
- Player does something
- Doing so gives the player experience points
- Given enough experience points, the player levels up

### 2.1.1 Activity Diagram
![NPC Interaction Activity Diagram](https://albgei.github.io/gamedevs/UCs/UC5%20Activity%20Diagram.png)

### 2.1.2 Mock-up
![NPC Interaction Mock-up](https://albgei.github.io/gamedevs/UCs/UC5%20Mark-up.jpg)

### 2.1.3 Narrative
```gherkin
@player @progression
Feature: Acquiring experience points and leveling up.
  Background:
     Given  I am in a room
     And    Game is active
     And    I am alive
     
  Scenario: Kill NPC
     Given  I damage NPC
     And    NPC dies
     Then   I will receive experience points
     
  Scenario: Finish Quest
     Given  I finish a quest
     And    Quest was successful
     Then   I will receive experience points
     
  Scenario: Enter new area
     Given  I enter a area / room
     And    I have not entered the area / room before
     Then   I will receive experience points

  Scenario: Enough experience points for level up
     Given  I have received experience points
     And    I have enough experience points for level up
     Then   I will level up

  Scenario: Not enough experience points for level up
     Given  I have received experience points
     And    I have not enough experience points for level up
     Then   I will not level up
     
  Scenario Outline: Leveling up
    Given I have <experience> points
    And   I am <level>
    When  I receive experience <points>
    And   I have enough experience points <needed>
    Then  I adjust my <new experience> points
    And   I increment my <new level>

    Examples: 
      | experience | points | needed | level | new experience | new level |
      |     000    |   00   |  020   |   1   |      000       |     1     |
      |     000    |  -99   |  020   |   1   |      000       |     1     |
      |     015    |  -99   |  020   |   1   |      015       |     1     |
      |     000    |   05   |  020   |   1   |      005       |     1     |
      |     015    |   00   |  020   |   1   |      015       |     1     |
      |     015    |   05   |  020   |   1   |      000       |     2     |
      |     015    |   15   |  020   |   1   |      010       |     2     |
      |     020    |   00   |  020   |   1   |      000       |     2     |
      |     020    |   05   |  020   |   1   |      005       |     2     |
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
