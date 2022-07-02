@player @movement
Feature: Moving to a new Room
  Background:
     Given  I am in a room
     And    Game is active
     And    There is a room change trigger

  Scenario: not moving
     Given I am at position
     When  I press noting
     Then  nothing

  Scenario: not moving toward trigger
     Given I am at position
     When  I press w/a/s/d
     And  I am at newPosition != trigger.position
     Then nothing

  Scenario: moving toward trigger
     Given I am at position
     When  I press w/a/s/d
     And  I am at newPosition = trigger.position
     Then change location to new room
