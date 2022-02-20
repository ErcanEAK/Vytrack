@FLTAPS-979
Feature: Default

	#{color:#ff0000}*User Story :* {color}
	#
	#As a user, I should be able to log in
	#
	# 
	#
	#{color:#57d9a3}*_Acceptance Criteria:_*{color}
	#
	#{*}1{*}-{_}*All users can log in with valid credentials (We have 3 types of users such as sales manager, store manager, truck driver).*{_}
	#     _*- Driver should land on the "Quick Launchpad" page after successful login*_
	#     _*- Sales Manager/ Store Manager should land on the "Dashboard" page after successful login*_
	#
	#{*}2{*}-"Invalid username or password." should be displayed for invalid (valid username-invalid password and invalid username-valid password) credentials
	#
	#{*}3{*}- "Please fill out this field" message should be displayed if the password or username is empty
	#
	#{*}4{*}-User land on the ‘Forgot Password’ page after clicking on the "Forgot your password?" link
	#
	#{*}5{*}-User can see "Remember Me" link exists and is clickable on the login page
	#
	#{*}6{*}-User should see the password in bullet signs by default
	#
	#{*}7{*}- Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.
	#
	#*8-* All users can see their own usernames in the profile menu, after successful login
	@FLTAPS-968 @FLTAPS-980
	Scenario Outline: Login Function With Valid Credentials
		Given the user is on the login page
		       When the user logged with "<username>" "<password>"
		       Then the pageTitle should be "<title>"
		
		
		      Examples:
		        | username    | password        | title          | 
		        | user1        | UserUser123 | Quick Launchpad|
		        | salesmanager120 | UserUser123  | Dashboard| 
		        | storemanager85 | UserUser123  | Dashboard|	

	#{color:#ff0000}*User Story :* {color}
	#
	#As a user, I should be able to log in
	#
	# 
	#
	#{color:#57d9a3}*_Acceptance Criteria:_*{color}
	#
	#{*}1{*}-All users can log in with valid credentials (We have 3 types of users such as sales manager, store manager, truck driver).
	#     - Driver should land on the "Quick Launchpad" page after successful login
	#     - Sales Manager/ Store Manager should land on the "Dashboard" page after successful login
	#
	#{*}2{*}-"{_}*Invalid username or password." should be displayed for invalid (valid username-invalid password and invalid username-valid password) credentials*{_}
	#
	#{*}3{*}- "Please fill out this field" message should be displayed if the password or username is empty
	#
	#{*}4{*}-User land on the ‘Forgot Password’ page after clicking on the "Forgot your password?" link
	#
	#{*}5{*}-User can see "Remember Me" link exists and is clickable on the login page
	#
	#{*}6{*}-User should see the password in bullet signs by default
	#
	#{*}7{*}- Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.
	#
	#*8-* All users can see their own usernames in the profile menu, after successful login
	@FLTAPS-969 @FLTAPS-980
	Scenario Outline: Login Function With Invalid Credentials
		Given the user is on the login page
		       When the user logged with "<username>" "<password>"
		       Then the message should be "<alertMessage>"
		
		
		      Examples:
		        | username    | password        | alertMessage          |
		        | wuser1        | UserUser123 | Invalid user name or password.|
		        | user1        | wUserUser123 | Invalid user name or password.|


	#{color:#ff0000}*User Story :* {color}
	#
	#As a user, I should be able to log in
	#
	# 
	#
	#{color:#57d9a3}*_Acceptance Criteria:_*{color}
	#
	#{*}1{*}-All users can log in with valid credentials (We have 3 types of users such as sales manager, store manager, truck driver).
	#     - Driver should land on the "Quick Launchpad" page after successful login
	#     - Sales Manager/ Store Manager should land on the "Dashboard" page after successful login
	#
	#{*}2{*}-"Invalid username or password." should be displayed for invalid (valid username-invalid password and invalid username-valid password) credentials
	#
	#{*}3{*}- _*"Please fill out this field" message should be displayed if the password or username is empty*_
	#
	#{*}4{*}-User land on the ‘Forgot Password’ page after clicking on the "Forgot your password?" link
	#
	#{*}5{*}-User can see "Remember Me" link exists and is clickable on the login page
	#
	#{*}6{*}-User should see the password in bullet signs by default
	#
	#{*}7{*}- Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.
	#
	#*8-* All users can see their own usernames in the profile menu, after successful login
	@FLTAPS-970 @FLTAPS-980
	Scenario Outline: Login Function With Empty Inputs
		Given the user is on the login page
		       When the user logged with "<username>" "<password>"
		       Then the pop up message should be "<fillMessage>"


		      Examples:
						  | username        | password    | fillMessage               |
						  |                 | UserUser123 | Lütfen bu alanı doldurun. |
						  | user1           |             | Lütfen bu alanı doldurun. |

	#{color:#ff0000}*User Story :* {color}
	#
	#As a user, I should be able to log in
	#
	# 
	#
	#{color:#57d9a3}*_Acceptance Criteria:_*{color}
	#
	#{*}1{*}-All users can log in with valid credentials (We have 3 types of users such as sales manager, store manager, truck driver).
	#     - Driver should land on the "Quick Launchpad" page after successful login
	#     - Sales Manager/ Store Manager should land on the "Dashboard" page after successful login
	#
	#{*}2{*}-"Invalid username or password." should be displayed for invalid (valid username-invalid password and invalid username-valid password) credentials
	#
	#{*}3{*}- "Please fill out this field" message should be displayed if the password or username is empty
	#
	#{*}4{*}-{_}*User land on the ‘Forgot Password’ page after clicking on the "Forgot your password?" link*{_}
	#
	#{*}5{*}-User can see "Remember Me" link exists and is clickable on the login page
	#
	#{*}6{*}-User should see the password in bullet signs by default
	#
	#{*}7{*}- Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.
	#
	#*8-* All users can see their own usernames in the profile menu, after successful login
	@FLTAPS-971 @FLTAPS-980
	Scenario: Verify Forgot Password Page
		Given the user is on the login page
		       When the user clicked "Forgot your password?" button
		       Then verify page title "Forgot Password"	

	#{color:#ff0000}*User Story :* {color}
	#
	#As a user, I should be able to log in
	#
	# 
	#
	#{color:#57d9a3}*_Acceptance Criteria:_*{color}
	#
	#{*}1{*}-All users can log in with valid credentials (We have 3 types of users such as sales manager, store manager, truck driver).
	#     - Driver should land on the "Quick Launchpad" page after successful login
	#     - Sales Manager/ Store Manager should land on the "Dashboard" page after successful login
	#
	#{*}2{*}-"Invalid username or password." should be displayed for invalid (valid username-invalid password and invalid username-valid password) credentials
	#
	#{*}3{*}- "Please fill out this field" message should be displayed if the password or username is empty
	#
	#{*}4{*}-User land on the ‘Forgot Password’ page after clicking on the "Forgot your password?" link
	#
	#{*}5{*}-{_}*User can see "Remember Me" link exists and is clickable on the login page*{_}
	#
	#{*}6{*}-User should see the password in bullet signs by default
	#
	#{*}7{*}- Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.
	#
	#*8-* All users can see their own usernames in the profile menu, after successful login
	@FLTAPS-972 @FLTAPS-980
	Scenario: Verify Remember Link
		Given the user is on the login page
		       When verify the link "Remember me on this computer" is exist
		       Then verify the link "Remember me on this computer" is clickable

	#{color:#ff0000}*User Story :* {color}
	#
	#As a user, I should be able to log in
	#
	# 
	#
	#{color:#57d9a3}*_Acceptance Criteria:_*{color}
	#
	#{*}1{*}-All users can log in with valid credentials (We have 3 types of users such as sales manager, store manager, truck driver).
	#     - Driver should land on the "Quick Launchpad" page after successful login
	#     - Sales Manager/ Store Manager should land on the "Dashboard" page after successful login
	#
	#{*}2{*}-"Invalid username or password." should be displayed for invalid (valid username-invalid password and invalid username-valid password) credentials
	#
	#{*}3{*}- "Please fill out this field" message should be displayed if the password or username is empty
	#
	#{*}4{*}-User land on the ‘Forgot Password’ page after clicking on the "Forgot your password?" link
	#
	#{*}5{*}-User can see "Remember Me" link exists and is clickable on the login page
	#
	#{*}6{*}-User should see the password in bullet signs by default
	#
	#{*}7{*}- _*Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.*_
	#
	#*8-* All users can see their own usernames in the profile menu, after successful login
	@FLTAPS-973 @FLTAPS-980
	Scenario Outline: Verify Enter Key
		Given the user is on the login page
		       When the user logged with enter key "<username>" "<password>"
		       Then the pageTitle should be "<title>"
		
		
		      Examples:
		        | username    | password     | title  | 
		        | user1        | UserUser123 | Quick Launchpad|
		        | salesmanager120 | UserUser123  | Dashboard| 
		        | storemanager85 | UserUser123  | Dashboard|	

	#{color:#ff0000}*User Story :* {color}
	#
	#As a user, I should be able to log in
	#
	# 
	#
	#{color:#57d9a3}*_Acceptance Criteria:_*{color}
	#
	#{*}1{*}-All users can log in with valid credentials (We have 3 types of users such as sales manager, store manager, truck driver).
	#     - Driver should land on the "Quick Launchpad" page after successful login
	#     - Sales Manager/ Store Manager should land on the "Dashboard" page after successful login
	#
	#{*}2{*}-"Invalid username or password." should be displayed for invalid (valid username-invalid password and invalid username-valid password) credentials
	#
	#{*}3{*}- "Please fill out this field" message should be displayed if the password or username is empty
	#
	#{*}4{*}-User land on the ‘Forgot Password’ page after clicking on the "Forgot your password?" link
	#
	#{*}5{*}-User can see "Remember Me" link exists and is clickable on the login page
	#
	#{*}6{*}-User should see the password in bullet signs by default
	#
	#{*}7{*}- Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.
	#
	#*8-* _*All users can see their own usernames in the profile menu, after successful login*_
	@FLTAPS-974 @FLTAPS-980
	Scenario Outline: Verify Username displayed
		Given the user is on the login page
		       When the user logged with "<username>" "<password>"
		       Then the username "<name>" is displayed
		
		
		      Examples:
		        | username    | password        | name          | 
		        | user1        | UserUser123 | John Doe|
		        | salesmanager120 | UserUser123  | John Doe| 
		        | storemanager85 | UserUser123  | John Doe|	

	#{color:#ff0000}*User Story :* {color}
	#
	#As a user, I should be able to log in
	#
	# 
	#
	#{color:#57d9a3}*_Acceptance Criteria:_*{color}
	#
	#{*}1{*}-All users can log in with valid credentials (We have 3 types of users such as sales manager, store manager, truck driver).
	#     - Driver should land on the "Quick Launchpad" page after successful login
	#     - Sales Manager/ Store Manager should land on the "Dashboard" page after successful login
	#
	#{*}2{*}-"Invalid username or password." should be displayed for invalid (valid username-invalid password and invalid username-valid password) credentials
	#
	#{*}3{*}- "Please fill out this field" message should be displayed if the password or username is empty
	#
	#{*}4{*}-User land on the ‘Forgot Password’ page after clicking on the "Forgot your password?" link
	#
	#{*}5{*}-User can see "Remember Me" link exists and is clickable on the login page
	#
	#{*}6{*}-{_}*User should see the password in bullet signs by default*{_}
	#
	#{*}7{*}- Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.
	#
	#*8-* All users can see their own usernames in the profile menu, after successful login
	@FLTAPS-991 @FLTAPS-980
	Scenario: Verify Password Bullet Sign
		Given the user is on the login page
		       When verify password input bullet sign
