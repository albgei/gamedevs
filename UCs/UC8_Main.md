# 1 Force Movement

## 1.1 Brief Description
Will move an entity away from the source of attack, if it has knockback.

# 2 Flow of Events
## 2.1 Basic Flow
- Entity takes Damage
- If Attack has Knockback, move Entity away

### 2.1.1 Activity Diagram
![Accepting Quest Activity Diagram](https://albgei.github.io/gamedevs/UCs/UC8%20Activity%20Diagram.png)

### 2.1.2 Mock-up
![Accepting Quest Mock-up](https://albgei.github.io/gamedevs/UCs/UC8%20Mark-up.jpg)

### 2.1.3 Narrative
```gherkin
@force @movement
Feature: Force movement on damage
  Background:
     Given  I am in a room
     And    Game is active
     And    I take damage

  Scenario: No knockback
     Given Attack has no knockback
     When  I press nothing
     Then  I am at position

  Scenario: Knockback
     Given Attack has knockback
     When  I press nothing
     Then  I am at newPosition > position
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
