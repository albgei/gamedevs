@npc @movement
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
