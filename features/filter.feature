Feature: display list of service projects filtered by a given field
    As a volunteer
    So that I can see available community service ideas by different category
    I want to be able to filter the project list by a certain category

Background: service projects have been added to database

  Given the following projects exist:
  | name                                    | cause             | description   | geography | volunteers    | budget    | difficulty    |
  | Bake Sale                               | Any               | example       | Any       | 1+            | $1-$49    | Easy          |
  | Highway Cleanup                         | Environment       | example       | Any       | 1+            | $1-$49    | Easy          |
  | PB&J Sandwiches for Homeless            | Homelessness      | example       | Urban     | 1+            | $1-$49    | Easy          |
  | Community Garden                        | Enviornment       | example       | Any       | 5+            | $50-$99   | Medium        |
  | Book Drive                              | Literacy          | example       | Any       | 1+            | $0        | Easy          |
  | Farmer's Market & Produce Collection    | Health/Wellness   | example       | Rural     | 5+            | $50-$99   | Hard          |
  | Picnic For A Cause                      | Any               | example       | Rural     | 5+            | $100-$249 | Hard          |
  | Food Bank                               | Homelessness      | example       | Any       | 1+            | $0        | Easy          |
  | Building Children's Playground          | Children          | example       | Any       | 15+           | $250+     | Hard          |

  And  I am on the home page

Scenario: Filter by name
  When I check the following filter: name
  
  Then I should see "Bake Sale" before "Book Drive"
  Then I should see "Book Drive" before "Building Children's Playground"
  Then I should see "Building Children's Playground" before "Community Garden"
  Then I should see "Community Garden" before "Farmer's Market & Produce Collection"
  Then I should see "Farmer's Market & Produce Collection" before "Food Bank"
  Then I should see "Food Bank" before "Highway Cleanup"
  Then I should see "Highway Cleanup" before "Picnic For A Cause"
  Then I should see "Picnic For A Cause" before "PB&J Sandwiches for Homeless"

Scenario: Filter by cause
  When I check the following filter: cause
  
  Then I should see "Bake Sale" before "Picnic For A Cause"
  Then I should see "Picnic For A Cause" before "Building Children's Playground"
  Then I should see "Building Children's Playground" before "Community Garden"
  Then I should see "Community Garden" before "Highway Cleanup"
  Then I should see "Highway Cleanup" before "Farmer's Market & Produce Collection"
  Then I should see "Farmer's Market & Produce Collection" before "Food Bank"
  Then I should see "Food Bank" before "PB&J Sandwiches for Homeless"
  Then I should see "PB&J Sandwiches for Homeless" before "Book Drive"
    
Scenario: Filter by geography
  When I check the following filter: geography
  
  Then I should see "Bake Sale" before "Book Drive"
  Then I should see "Book Drive" before "Building Children's Playground"
  Then I should see "Building Children's Playground" before "Community Garden"
  Then I should see "Community Garden" before "Food Bank"
  Then I should see "Food Bank" before "Highway Cleanup"
  Then I should see "Highway Cleanup" before "Farmer's Market & Produce Collection"
  Then I should see "Farmer's Market & Produce Collection" before "Picnic For A Cause"
  Then I should see "Picnic For A Cause" before "PB&J Sandwiches for Homeless"
  
  Then I should see "Any" before "Rural"
  Then I should see "Rural" before "Urban"

Scenario: Filter by volunteers
  When I check the following filter: volunteers
  
  Then I should see "1+" before "5+"
  Then I should see "5+" before "10+"

Scenario: Filter by budget
  When I check the following filter: budget
  
  Then I should see "Book Drive" before "Food Bank"
  Then I should see "Food Bank" before "Bake Sale"
  Then I should see "Bake Sale" before "Highway Cleanup"
  Then I should see "Highway Cleanup" before "PB&J Sandwiches for Homeless"
  Then I should see "PB&J Sandwiches for Homeless" before "Community Garden"
  Then I should see "Community Garden" before "Farmer's Market & Produce Collection"
  Then I should see "Farmer's Market & Produce Collection" before "Picnic For A Cause"
  Then I should see "Picnic For A Cause" before "Building Children's Playground"
  
  Then I should see "$0" before "$1-$49"
  Then I should see "$1-$49" before "$50-$99"
  Then I should see "$50-$99" before "$100-$249"
  Then I should see "$100-$249" before "$250+"
    
Scenario: Filter by difficulty
  When I check the following filter: difficulty
  
  Then I should see "Easy" before "Medium"
  Then I should see "Medium" before "Hard"