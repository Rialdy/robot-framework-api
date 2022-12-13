*** Settings ***
Library    RequestsLibrary
Library    Collections
Resource    ../steps/registration_resource.robot
Resource    ../resources/list_of_variable.robot


*** Test Cases ***
User Perform Registration With Valid Data
    Given Create Random Email
    Then User registration to the system    ${name}    ${randomEmail}    ${password}
