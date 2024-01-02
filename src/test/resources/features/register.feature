
@regression
Feature: As a user,
  I should register successfully
  I should see error message while register with existing email
  I should Place Order: Register while Checkout
  I should Place Order: Register before Checkout
  I should Place Order: Login before Checkout
  I should verify address details in checkout page

  @author_Prachi @sanity @smoke
  Scenario: User should register successfully
    Given I am on homepage and verify the homepage URL
    When I click on header menu option "Signup / Login"
    Then I should see the login page text "New User Signup!"
    And I send name "Prachi" and email "prachi@yahoo.com" to signup
    And I click on button "Signup"
    Then I should see text "ENTER ACCOUNT INFORMATION"
    And I fill all details in signup page "Ms" "Prachi" "26" "October" "1985" "Prachi" "Bansal" "70 A" "Delhi" "India" "Delhi" "India" "380024" "099012345678"
    And I click on news letter subscription check box
    And I click on special offers check box
    And I click on Create Account button
    Then I see account created message "ACCOUNT CREATED!"
    And I click on continue button
    Then I should see the text "Logged in as " "Prachi"
    And I click on header menu option "Delete Account"
    Then I should see the account deleted message "ACCOUNT DELETED!"
    And I click on continue button after deleting account

  @author_Prachi @smoke
  Scenario: User should see error message while register with existing email
    Given I am on homepage and verify the homepage URL
    When I click on header menu option "Signup / Login"
    Then I should see the login page text "New User Signup!"
    And I send name "Prachi" to name field in signup
    And I send email "prachi@yahoo.com" to email field in signup
    And I click on button "Signup"
    Then I should see error message "Email Address already exist!"

  @author_Prachi
  Scenario: User should Place Order: Register while Checkout
    Given I am on homepage and verify the homepage URL
    When I add product "Blue Top" to the cart
    And I click on view cart in popup
    And I should see the welcome text on shopping cart page "Shopping Cart"
    And I click on Proceed to Checkout button
    And I click on register link in the checkout popup
    And I send name "Prachi" and email "prachi123" to signup
    And I click on button "Signup"
    And I fill all details in signup page "Ms" "prachi@yahoo.com" "26" "October" "1985" "Prachi" "Bansal" "70 A" "Delhi" "India" "Delhi" "Delhi" "380024" "099012345678"
    And I click on Create Account button
    Then I see account created message "ACCOUNT CREATED!"
    And I click on continue button
    Then I should see the text "Logged in as " "Prachi"
    And I click on header menu option "Cart"
    And I click on Proceed to Checkout button
    And I should see the text on checkout page "Review Your Order"
    And I should see the text on checkout page "Address Details"
    And I enter details into comment area "Please deliver it on time."
    And I click on place order button
    And I enter payment details "Prachi Bansal" "4263982640269399" "999" "02" and "2025"
    And I click on Pay and Confirm Order button
    Then I should see the order confirmation message "Congratulations! Your order has been confirmed!"
    And I click on header menu option "Delete Account"
    Then I should see the account deleted message "ACCOUNT DELETED!"
    Then I click on continue button after deleting account

  @author_Prachi
  Scenario: User should Place Order: Register before Checkout
    Given I am on homepage and verify the homepage URL
    When I click on header menu option "Signup / Login"
    And I send name "Prachi" and email "Prachi123" to signup
    And I click on button "Signup"
    And I fill all details in signup page "Ms" "prachi@yahoo.com" "26" "October" "1985" "Prachi Bansal" "70 A" "Delhi" "India" "Delhi" "Delhi" "380024" "099012345678"
    And I click on Create Account button
    Then I see account created message "ACCOUNT CREATED!"
    And I click on continue button
    Then I should see the text "Logged in as " "Prachi"
    And I add product "Blue Top" to the cart
    And I click on view cart in popup
    And I should see the welcome text on shopping cart page "Shopping Cart"
    And I click on Proceed to Checkout button
    And I should see the text on checkout page "Review Your Order"
    And I should see the text on checkout page "Address Details"
    And I enter details into comment area "Please deliver it on time."
    And I click on place order button
    And I enter payment details "Prachi Bansal" "4263982640269399" "999" "02" and "2025"
    And I click on Pay and Confirm Order button
    Then I should see the order confirmation message "Congratulations! Your order has been confirmed!"
    And I click on header menu option "Delete Account"
    Then I should see the account deleted message "ACCOUNT DELETED!"
    Then I click on continue button after deleting account

  @author_Prachi
  Scenario: User should place the order successfully : Login before Checkout
    Given I am on homepage and verify the homepage URL
    When I click on header menu option "Signup / Login"
    Then I should see the login page text "Login to your account"
    And I enter "prachi@yahoo.com" email and "prachi123" password for login
    And I click on button "Login"
    Then I should see the text "Logged in as "
    And I add product "Blue Top" to the cart
    And I click on view cart in popup
    And I should see the welcome text on shopping cart page "Shopping Cart"
    And I click on Proceed to Checkout button
    And I should see the text on checkout page "Review Your Order"
    And I should see the text on checkout page "Address Details"
    And I enter details into comment area "Please deliver it on time."
    And I click on place order button
    And I enter payment details "Prachi bansal" "4263982640269399" "999" "02" and "2025"
    And I click on Pay and Confirm Order button
    Then I should see the order confirmation message "Congratulations! Your order has been confirmed!"
    And I click on header menu option "Logout"

  @author_Prachi
  Scenario: Verify address details in checkout page
    Given I am on homepage and verify the homepage URL
    When I click on header menu option "Signup / Login"
    And I send name "Prachi" and email "prachi123" to signup
    And I click on button "Signup"
    And I fill all details in signup page "Ms" "prachi@yahoo.com" "26" "October" "1985" "Prachi" "Bansal" "70 A" "Delhi" "India" "Delhi" "Delhi" "380024" "099012345678"
    And I click on Create Account button
    Then I see account created message "ACCOUNT CREATED!"
    And I click on continue button
    Then I should see the text "Logged in as " "Prachi"
    And I add product "Blue Top" to the cart
    And I click on view cart in popup
    And I should see the welcome text on shopping cart page "Shopping Cart"
    And I click on Proceed to Checkout button
    Then I should see the delivery address is same address filled at the time registration of account "70 A"
    And I should see billing address is same address filled at the time registration of account "70 A"
    And I click on header menu option "Delete Account"
    Then I should see the account deleted message "ACCOUNT DELETED!"
    And I click on continue button after deleting account