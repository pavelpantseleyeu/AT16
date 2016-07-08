*** Settings ***
Library           Selenium2Library

*** Keywords ***
RiseBrowser
    [Arguments]    ${url}    ${browser_type}
    Open Browser    ${url}    ${browser_type}
    Maximize Browser Window

ShutdownBrowser
    Close Browser
