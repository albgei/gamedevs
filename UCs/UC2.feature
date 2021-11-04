@player @interaction
Feature: interact with a Interactable
  Background:
    Given I am facing direction

  Scenario: Interact with interactable
    Given   Interactable is in direction
    And     Interactable is within reach
    When    Interaction button is pressed
    Then    Trigger interaction event

  Scenario: Interactable out of reach
    Given   Interactable is in direction
    And     Interactable is out of reach
    When    Interaction button is pressed
    Then    nothing

  Scenario: Interactable is not in direction
    Given   Interactable is not in direction
    And     Interactable is within reach
    When    Interaction button is pressed
    Then    nothing

  Scenario: Interactable is somewhere else
    Given   Interactable is not in direction
    And     Interactable is out of reach
    When    Interaction button is pressed
    Then    nothing
