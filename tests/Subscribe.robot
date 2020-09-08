*** Settings ***
Documentation   As a new user I want to subscribe as a new client.
Variables       ../resources/config.py
Resource        ../resources/Browser.robot
Library         ../resources/RegisterPage.py
Library         PageObjectLibrary
Library         SeleniumLibrary
Test Setup      Import Variables   ../data.yml
Test Teardown   Close Browser

*** Test Cases ***
Scenario: Subscribe
    Given I Open Browser at Home Page
    Then The current page should be    RegisterPage
    When Click On Register Now
    Then The current page should be    SignUpPage
    When Fill Out New User Form   ${New User}
    And Click on Sign Up
    Then Page Should Contain  
    ...  Your account is almost ready. First we need to confirm your email
    ...  address, for that we sent an email with instructions to
