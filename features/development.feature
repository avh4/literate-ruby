Feature: Executing literate programs
  In order reap the benefits of my work
  As a literate programmer
  I want to execute my literate program and see the results
  
  Scenario: Program with only code
    Given a program with only code (example1)
    When I execute the program
    Then I should see the expected output (example1)

  Scenario: Program with two code sections
    Given a program with two code sections (example2)
    When I execute the program
    Then I should see the expected output (example2)
  
  
  