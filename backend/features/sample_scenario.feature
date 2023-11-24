Feature: ToDo Lists
  Sample scenario for QA TopAcademy Cucumber Evaluation
  Background:
    Given I am in ToDo Lists app

  Scenario Outline: Add some lists to the to-do list
    When I add a "<list>" to the to-do list
    Then I should see the "<list>" added to the list
    And I should see the number of lists is not equal to 0

    Examples:
      |list|
      |Capybara    |
      |Playwright  |
      |Cypress     |
      |Cucumber    |

    Scenario: Add a new item to a list
      When I add a "Capybara" to the to-do list
      And I add "Do the home task" item to this list
      Then I should see the "Do the home task" item added to the list

    Scenario: Verify the delete this item text when clicked to the checkbox near an item
      When I add a "Capybara" to the to-do list
      And I add "Do the home task" item to this list
      And I click to the checkbox near the item being added
      Then I should see the delete this item text