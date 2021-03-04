Feature: Division

    As a user I want to see if the division function is working

    Scenario Outline: I should be able to see correct result when dividing numbers
    Given I access the online calculator
    When I divide numbers <dividend>, <divisor>
    Then I should be able to see correct <quotient>

    Examples:
        | dividend | divisor | quotient |
        | 1        | 1       | 1        |
        | 4        | 2       | 2        |