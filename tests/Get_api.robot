*** Settings ***
Documentation   As a user I want to get data from the api.
Library         ../resources/Api.py
Resource        ../resources/Api.robot


*** Test Cases ***
Scenario: Get scrapinghub api
    When Get from api
    Then Status Code is  ${200}
    And response text is   	http://httpbin.scrapinghub.com/get