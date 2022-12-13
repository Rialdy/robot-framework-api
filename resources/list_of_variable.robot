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

    
    