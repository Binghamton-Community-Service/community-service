class Project < ActiveRecord::Base
   
   @volunteers = {
      0 => "1+",
      1 => "5+",
      2 => "15+"
   }
   
   @budgets = {
      0 => "$0",
      1 => "$1-$49",
      2 => "$50-$99",
      3 => "$100-$249",
      4 => "$250+"
   }
   
   @difficulties = {
      0 => "Easy",
      1 => "Medium",
      2 => "Hard"
   }
   
   @geographies =["Any", "Rural", "Urban"]
   
   def self.all_geographies
      return @geographies
   end
   
   def self.all_volunteers
      return @volunteers.keys
   end
   
   def self.all_budgets
      return @budgets.keys
   end
   
   def self.all_difficulties
      return @budgets.keys
   end
   
end