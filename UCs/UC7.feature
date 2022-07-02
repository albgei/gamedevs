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
