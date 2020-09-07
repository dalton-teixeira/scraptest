*** Settings ***
Documentation  As a user I want to get data from the api.
Library    ../resources/Api.py

*** Variables ***
${Api Key}  5c3845bbb4104a1a85ab8af2d45a00de

*** Test Cases ***
Scenario: Get scrapinghub api
    When Get from api
    Then Status Code is  ${200}
    And response text is   	http://httpbin.scrapinghub.com/get

*** Keywords ***
Get from api
    ${response}=   Get   ${Api Key}
    Set Test Variable  ${response}

Status Code is
    [Arguments]  ${status}=${200}
    Should be Equal  ${response.status_code}  ${status}

Response text is
    [Arguments]  ${url}
    Should be equal  ${response.url}   ${url}