@tour
Feature: Vivino tour

  Background: Navigate to vivino home screen
    Then I verify the vivino "home" screen

  Scenario: Verify vivino tours
    When I navigate through tour screens
    Then I validate tour screens
