@FLTAPS-1087
Feature: Default

	Background:
		#@FLTAPS-997
		Given the user is on the login page
		

	#{*}3{*}- The user must be logged out if the user close the open tab (all tabs if there are multiple open tabs)
	@FLTAPS-1086 @FLTAPS-1088 @Logout
	Scenario: user must Logout after close open tabs Auto (ercan)
		When user click the tab close button
		Then user should open browser
		Then account should be closed	

	#*2-* The user can not go to the home page again by clicking the step back button after successfully logging out.
	@FLTAPS-1085 @FLTAPS-1088
	Scenario: User can not go back home page Auto (ercan)
		When user click the logout button
		Then verify page title should be Login
		Then Click step Back button
		Then Verify user not be able to Home page "<Login>"

	#*1-* The user can log out and ends up on the login page.
	@FLTAPS-1084 @FLTAPS-1088
	Scenario: Log out and display login page Auto (ercan)
		Then user click the logout button
		Then verify page title should be Login