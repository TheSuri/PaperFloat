Feature:get the list of all articles from the publication
	In order to get a list of all articles from a given publication
	I want to access a word in a word cloud and click on a desired publication
Scenario:
	Given I am on the PaperFloat front page
	And I have typed in a valid key, chain, in the input box
	And I have selected a valid limit, 2, in the limit box
	When I press ‘Submit’
	Then I should get a word cloud, with a word chain
	Then I should click on ‘chain’ in the word cloud
	Then I should select a publication for a first paper
	Then I should see a list of articles from that publication
