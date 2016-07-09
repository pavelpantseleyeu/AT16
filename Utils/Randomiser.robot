*** Settings ***
Library           String

*** Keywords ***
CreateRandomString
    [Arguments]    ${number_of_characters}
    Generate Random String    ${number_of_characters}
