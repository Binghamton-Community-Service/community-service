Feature: have a button that allows a project to be added
  As a volunteer
  So I can add a new project idea
  I want to be able to click a button to add a project to the project list
  
  Backgroud: service project ready to be added
  
  Given the following list exists:
  | name                                    | cause             | description   | geography | volunteers  | budget   | difficulty |
  | Bake Sale                               | Any               | example       | Any       | 0           | 1        | 0          |
  | Highway Cleanup                         | Environment       | example       | Any       | 0           | 1        | 0          |
  | PBJ Sandwiches for Homeless             | Homelessness      | example       | Urban     | 0           | 1        | 0          |
  | Community Garden                        | Enviornment       | example       | Any       | 1           | 2        | 1          |
  | Book Drive                              | Literacy          | example       | Any       | 0           | 0        | 0          |
  
  And I am on the home page
  
  Scenario: Add new project
    