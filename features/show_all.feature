Feature: Show all projects without filters or sorting
    As a website user
    So that I can see all existing community service ideas
    I want to be able to clear search results and view all project on the main page

Background: service projects have been added to database

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

Scenario: Show all projects
  When I fill in "Search" with "Bake"
  Then I press "Submit"
  When I follow "All Community Service Projects"
  Then I should see "Bake Sale"
  Then I should see "Highway Cleanup"
  Then I should see "PBJ Sandwiches for Homeless"
  Then I should see "Community Garden"
  Then I should see "Book Drive"
  Then I should see "Farmer's Market and Produce Collection"
  Then I should see "Picnic For A Cause"
  Then I should see "Food Bank"
  Then I should see "Building Children's Playground"