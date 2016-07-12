*** Settings ***
Library           Selenium2Library

*** Variables ***
${BROWSER_ID}     0
${BROWSER_STATUS}    False

*** Keywords ***
Is Browser Open
    Log    ${BROWSER_ID}
    Log    ${BROWSER_STATUS}
    ${browser_status}    Set Variable     True
    ${browser_id}    Get Window Identifiers
    ${browser_status}    Set Variable If    ${browser_id} == 0    False
    [Return]    ${browser_status}

Shutdown Browser
    Close Browser
    ${BROWSER_STATUS}    Set Variable    False
    ${BROWSER_ID}    Set Variable    0
