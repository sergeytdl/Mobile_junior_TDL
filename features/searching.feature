Feature: Searching
  
  # Background: User sign in into an account
  #   Given I am on the main screen
  #   When I open Me part
  #   And I choose Log in part
  #   And I select sign in tab
  #   And I enter login data
  #   And I'm logged in

  Scenario: Searching for an item
    Given I go to “Shop” tab
    When I search for an item "Pink Tee"
    And I open the first item in the list
    # Then The item is opened