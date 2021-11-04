@player @movement
Feature: Moving based on user input
  Background:
     Given  I am in a room
     And    Game is active
     And    There is no obstacle

  Scenario: not moving
     Given I am at position
     When  I press noting
     Then  I am at position

  Scenario: Moving up
     Given I am at position
     When  I press w
     Then  I am at newPosition.z > position.z

  Scenario: Moving left
     Given I am at position
     When  I press a
     Then  I am at newPosition.x < position.x

  Scenario: Moving down
     Given I am at position
     When  I press s
     Then  I am at newPosition.z < position.z

  Scenario: Moving right
     Given I am at position
     When  I press d
     Then  I am at newPosition.x > position.x

  Scenario Outline: Moving from start to position
    Given I am at <start>
    When  I press <key>
    And   I press for <duration>
    Then  I am at <position>

    Examples: 
      | start | key | duration | position |
      | 0,0,0 |  w  |    00    |   0,0,0  |
      | 0,0,0 |  a  |    00    |   0,0,0  |
      | 0,0,0 |  s  |    00    |   0,0,0  |
      | 0,0,0 |  d  |    00    |   0,0,0  |
      | 0,0,0 |  w  |    05    |   0,0,10 |
      | 0,0,0 |  a  |    05    | -10,0,0  |
      | 0,0,0 |  s  |    05    |   0,0,-10|
      | 0,0,0 |  d  |    05    |  10,0,0  |
    
    
    

