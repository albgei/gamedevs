@player @interaction
Feature: generating NPC
  Background:
     Given  Game is active
     And   I am in a room

  Scenario: spawn NPC in new room
     Given NPC spawnpoint in room A
     And   I (player) enter room A
     When  I press noting
     Then  spawn NPC
     
 Scenario: spawn NPC in spawn zone
     Given NPC spawn zone in room A
     And   I (player) am in room A
     When  Timer hits zero
     Then  spawn NPC
