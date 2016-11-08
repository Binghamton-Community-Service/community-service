# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: "Chicago" }, { name: "Copenhagen" }])
#   Mayor.create(name: "Emanuel", city: cities.first)

projects = [
          {:name => "Bake Sale", :cause => "Any", :description => "example", :geography => "Any",:volunteers => 0, :budget => 1, :difficulty => 0},
          
          {:name => "Book Drive", :cause => "Literacy", :description => "example", :geography => "Any", :volunteers => 0, :budget => 0, :difficulty => 0},
          
          {:name => "Building Children's Playground", :cause => "Children", :description => "example", :geography => "Any", :volunteers => 2, :budget => 4, :difficulty => 2},
          
          {:name => "Community Garden", :cause => "Enviornment", :description => "example", :geography => "Any", :volunteers => 1, :budget => 2, :difficulty => 1},
          
          {:name => "Farmer's Market & Produce Collection", :cause => "Health/Wellness", :description => "example", :geography => "Rural", :volunteers => 1, :budget => 2, :difficulty => 2},
          
          {:name => "Food Bank", :cause => "Homelessness", :description => "example", :geography => "Any", :volunteers => 0, :budget => 0, :difficulty => 0},
          
          {:name => "Highway Cleanup", :cause => "Enviornment ", :description => "example", :geography => "Any", :volunteers => 0, :budget => 1, :difficulty => 0},
          
          {:name => "Picnic For A Cause", :cause => "Any", :description => "example", :geography => "Rural", :volunteers => 1, :budget => 3, :difficulty => 2},
          
          {:name => "PB&J Sandwiches for Homeless", :cause => "Homelessness", :description => "example", :geography => "Urban", :volunteers => 0, :budget => 1, :difficulty => 0},
          
          ]

projects.each do |project|
  Project.create!(project)
end