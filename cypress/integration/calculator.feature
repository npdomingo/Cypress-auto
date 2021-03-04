Feature: Calculator

    As a user
    I want to see the calculator working as expected
    So that I will be able to compute reliable results

    Scenario Outline: I should be able to see correct result when calculating numbers
    Given I access online calculator
    When I click <num1>
    And I click <operator>
    And I click <num2>
    And I click =
    Then I should be able to see correct result <result>
    And I clear the result

    Examples:
    | num1 | operator | num2 | result |
    | 1    | +        | 0    | 1      |
    | 4    | -        | 2    | 2      |
    | 9    | /        | 3    | 3      |