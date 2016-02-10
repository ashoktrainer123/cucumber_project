Feature: Flight Finder Page

  Background:
    Given I open the website in browser
    And I login with tutorial username and tutorial password

  Scenario Outline: Complete the flight finder page
    Given Flight Finder page is displayed
    When I complete the Flight Information using the <record> data
    Then Select Flights Page is displayed

  Examples:
    | record |
    | record1 |