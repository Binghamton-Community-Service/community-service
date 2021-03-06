Feature: have a button that allows a project to be added
  As a volunteer
  So I can add a new project idea
  I want to be able to click a button to add a project to the project list
  
Background: service project ready to be added
  
  Given the following projects exist:
  | name                                    | cause             | description   | geography | volunteers  | budget   | difficulty |
  | Bake Sale                               | Any               | example       | Any       | 0           | 1        | 0          |
  | Highway Cleanup                         | Environment       | example       | Any       | 0           | 1        | 0          |
  | PBJ Sandwiches for Homeless             | Homelessness      | example       | Urban     | 0           | 1        | 0          |
  | Community Garden                        | Enviornment       | example       | Any       | 1           | 2        | 1          |
  | Book Drive                              | Literacy          | example       | Any       | 0           | 0        | 0          |
  | Farmer's Market and Produce Collection  | Health/Wellness   | example       | Rural     | 1           | 2        | 2          |
  | Picnic For A Cause                      | Any               | example       | Rural     | 0           | 3        | 2          |
  | Food Bank                               | Homelessness      | example       | Any       | 0           | 0        | 0          |
  | Building Children's Playground          | Children          | example       | Any       | 2           | 4        | 2          |
  
  And I am on the home page
  
Scenario: Add new project
    When I follow "add_link_id"
    When I fill in "Name" with "Test"
    When I fill in "Cause" with "Any"
    When I fill in "Description" with "Blank"
    When I fill in "Geography" with "Any"
    When I fill in "Volunteers" with "1"
    When I fill in "Budget" with "1"
    When I fill in "Difficulty" with "1"
    And I press "Submit Project"
    Then I should see "Test was successfully created."