# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: "Chicago" }, { name: "Copenhagen" }])
#   Mayor.create(name: "Emanuel", city: cities.first)

projects = [
          {:name => "Bake Sale", :cause => "Any", :description => "example", :geography => "Any",:volunteers => "1+", :budget => "$1-$49", :difficulty => "Easy"},
          
          {:name => "Book Drive", :cause => "Literacy", :description => "example", :geography => "Any", :volunteers => "1+", :budget => "$0", :difficulty => "Easy"},
          
          {:name => "Building Children's Playground", :cause => "Children", :description => "example", :geography => "Any", :volunteers => "15+", :budget => "$250+", :difficulty => "Hard"},
          
          {:name => "Community Garden", :cause => "Enviornment", :description => "example", :geography => "Any", :volunteers => "5+", :budget => "$50-$99", :difficulty => "Medium"},
          
          {:name => "Farmer's Market & Produce Collection", :cause => "Health/Wellness", :description => "example", :geography => "Rural", :volunteers => "5+", :budget => "$50-$99", :difficulty => "Hard"},
          
          {:name => "Food Bank", :cause => "Homelessness", :description => "example", :geography => "Any", :volunteers => "1+", :budget => "$0", :difficulty => "Easy"},
          
          {:name => "Highway Cleanup", :cause => "Enviornment ", :description => "example", :geography => "Any", :volunteers => "1+", :budget => "$1-$49", :difficulty => "Easy"},
          
          {:name => "Picnic For A Cause", :cause => "Any", :description => "example", :geography => "Rural", :volunteers => "5+", :budget => "$100-$249", :difficulty => "Hard"},
          
          {:name => "PB&J Sandwiches for Homeless", :cause => "Homelessness", :description => "example", :geography => "Urban", :volunteers => "1+", :budget => "$1-$49", :difficulty => "Easy"},
          
          ]

projects.each do |project|
  Project.create!(project)
end