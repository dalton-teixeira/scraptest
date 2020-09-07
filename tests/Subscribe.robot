*** Settings ***
Documentation  As a new user I want to subscribe as a new client.
Variables   ../resources/config.py
Library    ../resources/RegisterPage.py
Library     PageObjectLibrary
Library     SeleniumLibrary
Test Setup      Import Variables   ../data.yml
Test Teardown  Close Browser

*** Test Cases ***
Scenario: Subscribe
    Given I Open Browser at Home Page
    When Click On Register Now
    Then The current page should be    SignUpPage
    When Fill Out New User Form   ${New User}
    And Click on Sign Up
    Then Page Should Contain  
    ...  Your account is almost ready. First we need to confirm your email
    ...  address, for that we sent an email with instructions to
            

*** Keywords ***
I Open Browser at Home Page
    Open browser    ${CONFIG.server}    ${CONFIG.browser}
    Maximize Browser Window
    Set Selenium Speed    ${CONFIG.delay}
    Then The current page should be    RegisterPage