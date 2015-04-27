Given(/^I am on the PaperFloat front page$/) do 
	visit 'http://localhost/introducingphp/paperfl/PaperFloat/index.php'
end
Given(/^I have typed in a valid key, chain, in the input box$/) do 
	fill_in('searchterm', :with => "chain")
end
Given(/^I have selected a valid limit, 2, in the limit box$/) do
	fill_in('searchlimit', :with => "2")
end
When(/^I press ‘Submit’$/) do 
	click_button('submitbutton')
end
Then(/^I should get a word cloud, with a word chain$/) do 
	assert_text('chain')
end
Then(/^I should click on ‘chain’ in the word cloud$/) do 
	click_link('chain')
end
Then(/^I should select a publication for a first paper$/) do
	visit 'http://localhost/introducingphp/paperfl/PaperFloat/publication.php?searchterm=Management%20of%20Engineering%20&%20Technology,%202009.%20PICMET%202009.%20Portland%20International%20Conference%20on&from=chain'
end
Then(/^I should see a list of articles from that publication$/)do
	assert_text('Improving')
	assert_text('How')
	assert_text('Superconductivity')
end