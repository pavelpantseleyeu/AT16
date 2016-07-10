*** Settings ***
Resource          ../UI/Browser.robot

*** Keywords ***
Start Browser
    [Arguments]    ${url}    ${browser_type}
    Rise Browser    ${url}    ${browser_type}

Stop Browser
    Shutdown Browser
