# 1 Attacking & Death

## 1.1 Brief Description
Entities will have Health, that decrements with each attack received. When Health reaches 0, the entity is removed/killed.

# 2 Flow of Events
## 2.1 Basic Flow
- Entity takes Damage
- If Health = 0, remove Entity

### 2.1.1 Activity Diagram
![Generating Dungeon Activity Diagram](https://albgei.github.io/gamedevs/UCs/UC7%20Activity%20Diagram.png)

### 2.1.2 Mock-up
![Generating Dungeon Mock-up](https://albgei.github.io/gamedevs/UCs/UC7%20Mark-up.jpg)

### 2.1.3 Narrative
```gherkin
@player @interaction
Feature: attack interactable
  Background:
    Given   I am facing direction
    And     Interaction button is pressed

  Scenario: Attack enemy
    Given   Enemy is in direction
    And     Enemy is within reach
    Then    Trigger attack event

  Scenario: Enemy out of reach
    Given   Enemy is in direction
    And     Enemy is out of reach
    Then    nothing

  Scenario: Enemy is not in direction
    Given   Enemy is not in direction
    And     Enemy is within reach
    Then    nothing

  Scenario: Enemy is somewhere else
    Given   Enemy is not in direction
    And     Enemy is out of reach
    Then    nothing
    
  Scenario: Attack enemy death
    Given   Enemy is in direction
    And     Enemy is within reach
    And     Enemy.health <= attack.damage 
    Then    Trigger attack event

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
