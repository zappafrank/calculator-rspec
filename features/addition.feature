Feature: Addition
  As a programmer
  I want to use a custom calculator to add numbers
  So I don't have to use the default Ruby syntax

  Scenario: Adding two integers
    When I add two integers
    Then an integer is returned
    And the sum is correct

  Scenario: Adding zero to an integer
    When I add zero to an integer
    Then the integer is returned

  Scenario: Adding the same integers in different orders
    When I add two integers
    Then the sum is correct
    When I add the same integers in a different order
    Then the sum is correct

  Scenario: Adding three integers
    When I add three integers
    Then an integer is returned
    And the sum is correct
