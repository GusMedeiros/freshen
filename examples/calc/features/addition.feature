Feature: Addition
  In order to avoid silly mistakes
  As a math idiot 
  I want to be told the sum of two numbers

  Scenario Outline: Add two numbers
    Given I have entered <input_1> into the calculator
    And I have entered <input_2> into the calculator
    When I press <button>
    Then the result should be <output> on the screen

  Examples:
    | input_1 | input_2 | button | output |
    | 20      | 30      | add    | 50     |
    | 2       | 5       | add    | 7      |
    | 0       | 40      | add    | 40     |
    # inputs negativos
    | -5      | 30      | add    | 25     |
    | 5       | -3      | add    | 2      |
    # resultado negativo
    | 5       | -6      | add    | -1     |
    # resultado nulo normal
    | 0       |  0      | add    | 0      |
    # resultado nulo por inputs negativos
    | -1      |  1      | add    | 0      |
    # resultado não numérico (erro)
    | a       |  b      | add    | error  |