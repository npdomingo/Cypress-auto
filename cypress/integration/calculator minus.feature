Feature: Subtraction

    As a user I want to see if the subtraction function is working

    Scenario Outline: I should be able to see correct result when subtracting numbers
    Given I access the online calculator
    When I subtract numbers <minuend>, <subtrahend>
    Then I should be able to see correct <difference>

    Examples:
        | minuend | subtrahend | difference |
        | 2       | 1          | 1          |
        | 4       | 2          | 2          |