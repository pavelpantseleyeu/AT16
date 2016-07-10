*** Settings ***
Library           Selenium2Library

*** Keywords ***
Rise Browser
    [Arguments]    ${url}    ${browser_type}
    Open Browser    ${url}    ${browser_type}
    Maximize Browser Window

Shutdown Browser
    Close Browser
