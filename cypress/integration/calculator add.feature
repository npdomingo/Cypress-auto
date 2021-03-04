Feature: Addition

    As a user I want to see if the addition function is working

    Scenario Outline: I should be able to see correct result when adding numbers
    Given I access the online calculator
    When I add numbers <addend1>, <addend2>
    Then I should be able to see correct <sum>

    Examples:
        | addend1 | addend2 | sum |
        | 1       | 1       | 2   |
        | 2       | 2       | 4   |