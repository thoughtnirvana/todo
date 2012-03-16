Feature: New todo
  In order to make a todo entry 
  a user
  wants to be able to create a new todo entry 

  Scenario: Create a new todo 
    Given I am on "create new todo" page
    When I fill in "valid values for new todo"
    Then a "new todo" should have been created
