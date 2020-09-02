@profile
Feature: Vivino profile

  Background: Navigate to vivino home screen
    Then I verify the vivino "home" screen

  Scenario: Verify vivino profile
    When I navigate through tour screens
    Then I validate tour screens
    And I navigate to profile screen
    Then I verify the vivino "profile" screen
