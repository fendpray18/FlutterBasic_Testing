Feature: Modified Scenario
  My modify tests

  @smoke @modify
  Scenario: should increment counter
    Given I expect the "counter" to be "0"
    When I tap the "increment" button
    And I tap the "increment" button
    Then I see if the value is "2"

  @smoke @modify
  Scenario: validate openPage
    Given I see page one as "Counter App Home Page"
    When I click the pagetwo button
    Then I see page two as "Page 1"