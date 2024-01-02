@regression
Feature: As a user,
  I should log the contact us form
  I should redirect to Test Cases page successfully
  I should subscribe in the homepage
  I should subscribe in the Cart page
  I should remove the product from cart
  I should download invoice after purchase order
  I should scroll down and scroll up using Arrow button at bottom right corner
  I should scroll down and scroll up without Arrow button

  @author_Prachi @sanity @smoke
  Scenario: User should log the contact us form
    Given I am on homepage and verify the homepage URL
    When I click on header menu option "Contact us"
    Then I should see welcome text on contact us page "GET IN TOUCH"
    And I enter "Prachi" name to name field
    And I enter "prachi@yahoo.com" email to email field
    And I enter "About product" subject to subject field
    And I enter "This product is nice" message to message field
    And I upload file
    And I click on submit button
    And I click on ok button popup
    Then I should see the success message "Success! Your details have been submitted successfully."
    And I click on home button
    Then I am on homepage and verify the homepage URL


  @author_Prachi @smoke
  Scenario: User should redirect to Test Cases page successfully
    Given I am on homepage and verify the homepage URL
    When I click on header menu option "Test Cases"
    Then I am on text cases page and verify the test-cases URL "https://automationexercise.com/test_cases"


  @author_Prachi
  Scenario: User should subscribe in the homepage
    Given I am on homepage and verify the homepage URL
    When I scroll down up to subscription link
    Then I enter email "prachi@yahoo.com"
    And I click on arrow button
    And I should see the success subscription message "You have been successfully subscribed!"


  @author_Prachi
  Scenario: User should subscribe in the Cart page
    Given I am on homepage and verify the homepage URL
    When I click on header menu option "Cart"
    And I scroll down up to subscription link
    Then I enter email "prachi@yahoo.com"
    And I click on arrow button
    And I should see the success subscription message "You have been successfully subscribed!"


  @author_Prachi
  Scenario: User should remove the product from cart
    Given I am on homepage and verify the homepage URL
    When I add product "Blue Top" to the cart
    And I click on view cart in popup
    And I should see the welcome text on shopping cart page "Shopping Cart"
    Then I click on cross button to remove the product from the cart


  @author_Prachi
  Scenario: User should download invoice after purchase order
    Given I am on homepage and verify the homepage URL
    When I add product "Blue Top" to the cart
    And I click on view cart in popup
    And I should see the welcome text on shopping cart page "Shopping Cart"
    And I click on Proceed to Checkout button
    And I click on register link in the checkout popup
    And I send name "Prachi" and email "prachi@yahoo.com" to signup
    And I click on button "Signup"
    And I fill all details in signup page "Ms" "prachi@yahoo.com" "26" "October" "1985" "Prachi" "Bansal" "70 A" "Delhi" "India" "Delhi" "India" "110095" "09912345678"
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
    And I click on download invoice after order success
    And I click on continue button after order success
    And I click on header menu option "Delete Account"
    Then I should see the account deleted message "ACCOUNT DELETED!"
    Then I click on continue button after deleting account

  @author_Prachi
  Scenario: User should scroll down and scroll up using Arrow button at bottom right corner
    Given I am on homepage and verify the homepage URL
    When I scroll down up to subscription link
    Then I should see the subscription "SUBSCRIPTION" text
    And I click on arrow up button at bottom right corner
    And I should see the message "Full-Fledged practice website for Automation Engineers"

  @author_Prachi
  Scenario: User should scroll down and scroll up without Arrow button
    Given I am on homepage and verify the homepage URL
    When I scroll down up to subscription link
    Then I should see the subscription "SUBSCRIPTION" text
    And I scroll up
    And I should see the message "Full-Fledged practice website for Automation Engineers"