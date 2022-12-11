*** Settings ***
Library    RequestsLibrary
Library    Collections 
Library    JSONLibrary
Library    OperatingSystem
Library    ../libraries/lib.py
Documentation    Create some variable 


*** Variables ***
${invalidEmail}=    test2@mailinator.com
${name}=    kid
${password}=    1234qwerty

*** Keywords ***
Create Random Email
    ${randomChar}=    randNum
    ${randomEmail}=    Set Variable    kid${randomChar}@yopmail.com
    Set Global Variable    ${randomEmail}
    
    