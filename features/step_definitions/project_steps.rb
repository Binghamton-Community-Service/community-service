# --------- Sort feature -------------

Given(/^the following projects exist:$/) do |table|
	table.hashes.each do |project|
		Project.create(project)
	end
end

Then(/^I should see "([^"]*)" before "([^"]*)"$/) do |arg1, arg2|
  (page.body.index(arg1) < page.body.index(arg2))
end

When(/^I click an image with a link to "([^"]*)"$/) do |arg1|
	#page.click_link('', :href => arg1)
	find("##{arg1}").click
end