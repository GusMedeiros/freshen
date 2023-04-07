Feature: Calculator

Scenario Outline: Add two numbers
  Given I have entered <input_1> into the calculator
  And I have entered <input_2> into the calculator
  When I press <button>
  Then the result should be <output> on the screen

Examples:
  | input_1 | input_2 | button | output |
  # adição
      # inputs positivos
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
      # numeros reais
  | 0.5     |  1      | add    |  1.5   |


  # multiplicação
    # numeros positivos gerais
  | 5       |  5      | multiply | 25   |
    # multiplicar por 1 (fator nulo)
  | 5       |  1      | multiply | 5    |
  | 1       |  5      | multiply | 5    |
    # multiplicar por 0
  | 5       |  0      | multiply | 0    |
  | 0       |  5      | multiply | 0    |
    # numeros negativos gerais
  | 5       | -4      | multiply | -20  |
  | -1      |  5      | multiply | -5   |
    # numeros reais
  | 0.5     |  1      | multiply | 0.5  |

  # divisão
    # numeros positivos gerais
  | 3       |   1     | divide   |  3   |
    # numeros negativos gerais
  | -5      |   1     | divide   | -5   |
  |  5      |  -1     | divide   | -5   |
    # divisão por 0
  | 5       |   0     | divide   | error|
    # divisão de 0
  | 0       |   50    | divide   |  0   |
    # numeros reais de módulos maiores que 1
  | 50      |   2.5   | divide   | 20   |
  | 50      |  -2.5   | divide   |-20   |
    # numeros reais de módulos menores que 1
  | 50      |   0.5   | divide   | 100  |
  | 50      |  -0.5   | divide   |-100  |

  # subtração
      # inputs positivos
  | 30      | 20      | subtract    | 10     |
  | 20      | 30      | subtract    | -10    |
     # inputs negativos
  | -5      | 30      | subtract    | -35    |
  | 5       | -3      | subtract    | 8      |
      # resultado nulo normal
  | 0       |  0      | subtract    | 0      |
  | -1      |  -1     | subtract    | 0      |
  | 1       |  1      | subtract    | 0      |
      # resultado não numérico (erro)
  | a       |  b      | subtract    | error  |
      # numeros reais
  | 0.5     |  1      | subtract    |  -0.5  |
  | 1       | 0.5     | subtract    |  0.5   |
