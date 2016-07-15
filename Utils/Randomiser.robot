*** Settings ***
Library           String

*** Keywords ***
Set Random String
    [Arguments]    ${number_of_characters}
    ${randomString}=    Generate Random String    ${number_of_characters}
    Set Suite Variable    ${randomString}
