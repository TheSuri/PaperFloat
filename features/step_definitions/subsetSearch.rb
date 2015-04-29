Given(/^I am on the Paperfloat index$/) do
	visit 'http://localhost/introducingphp/paperfl/PaperFloat/index.php'
end
Given(/^I have entered a key, ‘chain’$/) do
	fill_in('searchterm', :with => "chain")
end
Given(/^I have chosen a limit, 2$/) do
	fill_in('searchlimit', :with => "2")
end
When(/^I press ‘Submit’ button$/) do
	click_button('submitbutton')
end
Then(/^I should get a word cloud, chain$/) do 
	assert_text('chain')
end
Then(/^I should click on ‘chain’$/) do 
	click_link('chain')
end
Then(/^I should select two first articles$/) do
	check('row0')
	check('row1')
end
Then(/^I should click ‘Subset Search’$/) do
	click_button('subsetbutton')
end
Then(/^I should see ‘set’$/) do
	assert_text('set')
end