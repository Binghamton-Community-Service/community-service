Feature: display list of service projects Sorted by a given field
    As a volunteer
    So that I can see available community service ideas by different category
    I want to be able to Sort the project list by a certain category

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

Scenario: Sort by name
  When I follow "Name"
  
  Then I should see "Bake Sale" before "Book Drive"
  Then I should see "Book Drive" before "Building Children's Playground"
  Then I should see "Building Children's Playground" before "Community Garden"
  Then I should see "Community Garden" before "Farmer's Market and Produce Collection"
  Then I should see "Farmer's Market and Produce Collection" before "Food Bank"
  Then I should see "Food Bank" before "Highway Cleanup"
  Then I should see "Highway Cleanup" before "Picnic For A Cause"
  Then I should see "Picnic For A Cause" before "PBJ Sandwiches for Homeless"

Scenario: Sort by cause
  When I follow "Cause"
  
  Then I should see "Bake Sale" before "Picnic For A Cause"
  Then I should see "Picnic For A Cause" before "Building Children's Playground"
  Then I should see "Building Children's Playground" before "Community Garden"
  Then I should see "Community Garden" before "Highway Cleanup"
  Then I should see "Highway Cleanup" before "Farmer's Market and Produce Collection"
  Then I should see "Farmer's Market and Produce Collection" before "Food Bank"
  Then I should see "Food Bank" before "PBJ Sandwiches for Homeless"
  Then I should see "PBJ Sandwiches for Homeless" before "Book Drive"
    
Scenario: Sort by geography
  When I follow "Geography"
  
  Then I should see "Bake Sale" before "Book Drive"
  Then I should see "Book Drive" before "Building Children's Playground"
  Then I should see "Building Children's Playground" before "Community Garden"
  Then I should see "Community Garden" before "Food Bank"
  Then I should see "Food Bank" before "Highway Cleanup"
  Then I should see "Highway Cleanup" before "Farmer's Market and Produce Collection"
  Then I should see "Farmer's Market and Produce Collection" before "Picnic For A Cause"
  Then I should see "Picnic For A Cause" before "PBJ Sandwiches for Homeless"

Scenario: Sort by volunteers
  When I follow "Volunteers"
  
  Then I should see "1+" before "5+"
  Then I should see "5+" before "15+"

Scenario: Sort by budget
  When I follow "Budget"
  
  Then I should see "$0" before "$1-$49"
  Then I should see "$1-$49" before "$50-$99"
  Then I should see "$50-$99" before "$100-$249"
  Then I should see "$100-$249" before "$250"
  
Scenario: Sort by difficulty
  When I follow "Difficulty"
  
  Then I should see "Easy" before "Medium"
  Then I should see "Medium" before "Hard"