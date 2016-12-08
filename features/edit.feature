Feature: Edit a current Project
  As a website administrator
  So that I can edit existing community service ideas
  I want to be able to modify a project that is already posted on the main page
  
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
    
Scenario:
  Given I am on the home page
  When I follow "Bake Sale_edit_link_id"
  When I fill in "Name" with "Bake sale"
  And I press "Update Project Info"
  Then I should see "Bake sale was successfully updated"
  Then I follow "Return to main page"
  Then I should see "Bake sale"
    