Feature: Adding and removing an item

 Background: User sign in into an account
    Given I am on the main screen
    When I open Me part
    And I choose Log in part
    And I select sign in tab
    And I enter login data

  Scenario: Adding an item to my cart. Removing an item from my cart.
    Given I'm logged in
    When I go to “Shop” tab
    When I search for an item "folk-custom print tube top"
    And I open the first item in the list
    And I choose color and size
    And I add the item to the cart
    And I open my cart
    And I validate that item was added 
    And I remove the item
    Then I validate that the bag is empty


