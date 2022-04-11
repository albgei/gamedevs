# 1 NPC Movement

## 1.1 Brief Description
Allows the NPC (Non-player character) to move in one of four directions based on target location.

# 2 Flow of Events
## 2.1 Basic Flow
- NPC finds a target
- NPC moves in the direction of the target

### 2.1.1 Activity Diagram
![NPC Movement Activity Diagram](https://albgei.github.io/gamedevs/UCs/UC3%20Activity%20Diagram.png)

### 2.1.2 Mock-up
![NPC Movement Mock-up](https://albgei.github.io/gamedevs/UCs/UC3%20Mark-up.jpg)

### 2.1.3 Narrative
```gherkin
@player @movement
Feature: Moving based on target location
  Background:
     Given  I (NPC) am in a room
     And    Game is active
     And    There is no obstacle
     And    There is a target

  Scenario: not moving
     Given I am at position
     And   Target is gone
     Then  I am at position

  Scenario: Moving up
     Given I am at position
     And   Target is above from position
     Then  I am at newPosition.z > position.z

  Scenario: Moving left
     Given I am at position
     And   Target is left from position
     Then  I am at newPosition.x < position.x

  Scenario: Moving down
     Given I am at position
     And   Target is below from position
     Then  I am at newPosition.z < position.z

  Scenario: Moving right
     Given I am at position
     And   Target is right from position
     Then  I am at newPosition.x > position.x

  Scenario Outline: Moving from start to position
    Given I am at <start>
    And   Target is at <location>
    And   I move for <duration>
    Then  I am at <position>

    Examples: 
      | start |  location  | duration | position |
      | 0,0,0 |   0,0,20   |    00    |   0,0,0  |
      | 0,0,0 | -20,0,0    |    00    |   0,0,0  |
      | 0,0,0 |   0,0,-20  |    00    |   0,0,0  |
      | 0,0,0 |  20,0,0    |    00    |   0,0,0  |
      | 0,0,0 |   0,0,20   |    05    |   0,0,10 |
      | 0,0,0 | -20,0,0    |    05    | -10,0,0  |
      | 0,0,0 |   0,0,-20  |    05    |   0,0,-10|
      | 0,0,0 |  20,0,0    |    05    |  10,0,0  |
      | 0,0,0 |   0,0,20   |    15    |   0,0,20 |
      | 0,0,0 | -20,0,0    |    15    | -20,0,0  |
      | 0,0,0 |   0,0,-20  |    15    |   0,0,-20|
      | 0,0,0 |  20,0,0    |    15    |  20,0,0  |
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
