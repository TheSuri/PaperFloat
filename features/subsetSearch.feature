Feature: get the wordcloud from the subset search
	In order to get a wordcloud from the subset search
	I want to access a word in a word cloud, select subset and click ‘Subset Search’
Scenario:
	Given I am on the Paperfloat index
	And I have entered a key, ‘chain’
	And I have chosen a limit, 2
	When I press ‘Submit’ button
	Then I should get a word cloud, chain
	Then I should click on ‘chain’
	Then I should select two first articles
	Then I should click ‘Subset Search’
	Then I should see ‘set’