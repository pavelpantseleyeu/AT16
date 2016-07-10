*** Settings ***
Library           String

*** Keywords ***
Create Random String
    [Arguments]    ${number_of_characters}
    ${x}=    Generate Random String    ${number_of_characters}
    [Return]    ${x}
