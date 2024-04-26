Feature: This test suite contains scenarios to test the various features under Manage Requests tab

Scenario: A. View all the sent requests pagewise
	Given user logs into the Mars Portal as Abcd
	When user  navigates to the Sent Request page
	Then user should be able to view all the requests sent by Abcd pagewise

Scenario: B. Sent a new skill trade request to another user and withdraw it
	Given user logs into the Mars Portal as Abcd
	And user  navigates to the interested service details page
	When user sends a skill trade request to the intended user
	And user withdraws the sent request
	Then user should be able to successfully sent the request and withdraw it

Scenario: C. Complete and Review a skill trade sent request that has been accepted and completed by the receiver
	Given user logs into the Mars Portal as Abcd
	And user  navigates to the interested service details page
	And user sends a skill trade request to the intended user
	When received user accepts the request
	And sent user completes and reviews the skill trade
	Then sent user should be able to successfully complete the skill trade request
