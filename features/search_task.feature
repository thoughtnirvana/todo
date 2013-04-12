Feature: Search task

Background:
Given I have task entries in the db

  Scenario: Search for an existing task
    When I search for "iPhone"
    Then the search result should contain "iPhone"

  Scenario: Search for a non-exsiting task
    When I search for "asdadasdasd"
    Then the page should display the "not found" message
