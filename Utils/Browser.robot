*** Settings ***
Library           Selenium2Library
Resource          ../globalConfig/testEnv.robot

*** Variables ***

*** Keywords ***
Shutdown Browser
    Close Browser
    Set Suite Variable    ${BROWSER_ID}    "no_id"
    Log    ${BROWSER_ID}
