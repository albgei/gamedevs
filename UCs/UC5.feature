@npc @movement
Feature: Finding target location
  Background:
     Given  I (NPC) am in a room
     And    Game is active
     And    There is no obstacle

  Scenario: Target player
     Given Player in detection range
     When  I press noting
     Then  set target player.position

  Scenario: not moving toward trigger
     Given Player not in detection range
     And   I do not have patrol point
     When  I press noting
     Then nothing

  Scenario: Target patrol point
     Given Player not in detection range
     And   I have patrol point
     When  I press noting
     Then  set target patrol point.position

