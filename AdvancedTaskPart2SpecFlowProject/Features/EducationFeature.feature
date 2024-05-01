Feature: This test suite contains scenarios for Education feature on the Mars Portal


Scenario: A. Delete all Education records
	Given user logs into the Mars Portal Profile Page
	And user selects the Education tab
	When user deletes all the education records one by one
	Then Mars portal should not have any Education records for the logged in account

Scenario: B. Adds new Education record with valid data in all fields
	Given user logs into the Mars Portal Profile Page
	And user selects the Education tab
	When user enters valid data in all the fields
	Then Mars portal should alert the user and save the new education record

Scenario: C. Adds new Education record without entering values in any of the fields
	Given user logs into the Mars Portal Profile Page
	And user selects the Education tab
	When user does not enter data in any of the available fields
	Then Mars portal should alert the user and should not save the new education record

Scenario: D. Adds new Education record without selecting the dropdowns
	Given user logs into the Mars Portal Profile Page
	And user selects the Education tab
	When user does not select any options from the dropdowns
	Then Mars portal should alert the user and should not save the new education record

Scenario: E. Adds new Education record without entering any data in Text Boxes
	Given user logs into the Mars Portal Profile Page
	And user selects the Education tab
	When user does not enter any data in both the Text Boxes
	Then Mars portal should alert the user and should not save the new education record

Scenario: F. Add an already existing Education record
	Given user logs into the Mars Portal Profile Page
	And user selects the Education tab
	When user adds an already existing education record
	Then Mars portal should alert the user and should not save the new education record

Scenario: G. Adds an Education record with already existing data in Text Boxes and selecting different dropdowns
	Given user logs into the Mars Portal Profile Page
	And user selects the Education tab
	When user adds an education record with already existing data in Text Boxes and selecting different dropdown options
	Then Mars portal should alert the user and save the new education record

Scenario: H. Adds an Education record with new data in Text Boxes and selecting already existing dropdowns
	Given user logs into the Mars Portal Profile Page
	And user selects the Education tab
	When user adds an education record with new data in Text Boxes and selecting already existing dropdowns
	Then Mars portal should alert the user and save the new education record

Scenario: I. Adds an Education record with Special Characters and numbers in College TextBox
	Given user logs into the Mars Portal Profile Page
	And user selects the Education tab
	When user adds an education record with Special Characters and numbers in College TextBox
	Then Mars portal should alert the user and save the new education record

Scenario: J. Adds an Education record with more than 500 characters in Degree TextBox
	Given user logs into the Mars Portal Profile Page
	And user selects the Education tab
	When user adds an education record with very long data in Degree TextBox
	Then Mars portal should alert the user and save the new education record

Scenario: K. Adds an Education record with only Spaces in TextBoxes
	Given user logs into the Mars Portal Profile Page
	And user selects the Education tab
	When user adds an education record with only Spaces in TextBoxes
	Then Mars portal should alert the user and should not save the new education record

Scenario: L. Cancels an Education record without adding
	Given user logs into the Mars Portal Profile Page
	And user selects the Education tab
	When user cancels an Education record without adding
	Then Mars portal should not save the cancelled education record





