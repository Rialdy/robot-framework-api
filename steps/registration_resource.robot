*** Settings ***
Library    RequestsLibrary
Library    Collections 
Library    JSONLibrary
Library    OperatingSystem
Library    ../libraries/lib.py

*** Variables ***
${baseUrl}    http://restapi.adequateshop.com


*** Keywords ***
User registration to the system
    [Arguments]    ${name}    ${email}    ${password}    
    ${randomChar}=    randNum
    ${email}=    Set Variable    kid${randomChar}@yopmail.com
    ${body}=    Create Dictionary    name=${name}    email=${email}   password=${password}
    Create Session    Registration    ${baseUrl}
    ${registrationStep}=    POST On Session    Registration    /api/authaccount/registration    json=${body}    expected_status=Anything
    ${respondJson}=    Set Variable    ${registrationStep.json()}
    