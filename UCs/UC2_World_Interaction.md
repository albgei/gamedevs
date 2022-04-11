# 1 World Interaction

## 1.1 Brief Description
Allows the player to interact with interactables which implement the interactable interface.

# 2 Flow of Events
## 2.1 Basic Flow
- Player presses activation button
- if interactable infront of Player, trigger interaction

### 2.1.1 Activity Diagram
![Player Movement Activity Diagram](https://albgei.github.io/gamedevs/UCs/UC2%20Activity%20Diagram.png)

### 2.1.2 Mock-up
![Player Movement Mock-up](https://albgei.github.io/gamedevs/UCs/UC2%20Mark-up.jpg)

### 2.1.3 Narrative

```gherkin
@player @interaction
Feature: interact with a Interactable
  Background:
    Given   I am facing direction
    And     Interaction button is pressed

  Scenario: Interact with interactable
    Given   Interactable is in direction
    And     Interactable is within reach
    Then    Trigger interaction event

  Scenario: Interactable out of reach
    Given   Interactable is in direction
    And     Interactable is out of reach
    Then    nothing

  Scenario: Interactable is not in direction
    Given   Interactable is not in direction
    And     Interactable is within reach
    Then    nothing

  Scenario: Interactable is somewhere else
    Given   Interactable is not in direction
    And     Interactable is out of reach
    Then    nothing
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
