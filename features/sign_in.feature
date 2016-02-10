Feature: Logging into Demo Website

  Scenario: Validating the login functionality for valid users
    Given I open the website in browser
    When I login with tutorial username and tutorial password
    Then Flight Finder page is displayed


  #Example using the parameterization
  Scenario Outline: Validating the login functionality with paramterization
    Given I open the website in browser
    When I login with <username> username and <password> password
    Then Flight Finder page is displayed

  Examples:
    | username              | password    |
    |  tutorial             |   tutorial   |
#    |  test                 |   test       |
#    |  training             |   training    |


  Scenario Outline: Validating the login functionality with YAML file parameterization
    Given I open the website in browser
    When I login loading data from <record>
    Then Flight Finder page is displayed

    Examples:
      | record      |
      |  record1    |
#      |  record2    |
#      |  record3    |