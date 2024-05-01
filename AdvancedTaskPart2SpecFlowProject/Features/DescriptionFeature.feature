Feature: This test suite contains scenarios for description feature on the Mars Portal


Scenario: A. Add a valid profile description
	Given user logs into the Mars Portal Profile Page
	And user clicks on the edit description icon
	When user enters a valid description
	Then Mars portal should save the entered description and display it on the profile page

Scenario: B. Add empty profile description
	Given user logs into the Mars Portal Profile Page
	And user clicks on the edit description icon
	When user enters NULL value in description
	Then Mars portal should alert the user and should not save the description

Scenario: C. Add profile description starting with special character
	Given user logs into the Mars Portal Profile Page
	And user clicks on the edit description icon
	When user enters a description starting with special character
	Then Mars portal should alert the user and should not save the description

Scenario: D. Add profile description with only spaces
	Given user logs into the Mars Portal Profile Page
	And user clicks on the edit description icon
	When user enters a description with spaces only
	Then Mars portal should alert the user and should not save the description

Scenario: E. Add a profile description with more than 600 characters
	Given user logs into the Mars Portal Profile Page
	And user clicks on the edit description icon
	When user enters a profile description with more than six hundred characters
	Then Mars portal should save the first six hundred characters in the description and display it on the profile page

