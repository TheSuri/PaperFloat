
Given(/^I am totally on the PaperFloat front page$/) do 
	visit 'http://localhost/PaperFloat/' 
end
Given(/^I have entered a valid key word, chain, in the input box$/) do
	fill_in('searchterm', :with => "chain")
end
Given(/^I have chosen a valid limit, 2, in the limit box$/) do 
	fill_in('searchlimit', :with => "2")
end
When(/^I totally click the Submit button$/) do
	click_button('submitbutton')
end
Then(/^I should get a word cloud, with the word chain$/)  do
	assert_text('chain')
end
Then(/^I should totally click on 'chain' in the word cloud$/) do
	click_link('chain')
end
Then(/^I should click on the 'Export list as PDF' button$/) do
	click_button('pdfbutton')
end
Then(/^I should see a pdf document of a list$/) do
	visit 'http://localhost/PaperFloat/pdf_creator.php?'

end


