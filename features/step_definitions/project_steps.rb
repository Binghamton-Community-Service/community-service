Given(/^the following projects exist:$/) do |table|
	table.hashes.each do |project|
		Project.create(project)
	end
end

Then(/^I should see "([^"]*)" before "([^"]*)"$/) do |arg1, arg2|
  (page.body.index(arg1) < page.body.index(arg2))
end
