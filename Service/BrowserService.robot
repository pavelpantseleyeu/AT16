*** Settings ***
Resource          ../UI/Browser.robot

*** Keywords ***
StartBrowser
    [Arguments]    ${url}    ${browser_type}
    RiseBrowser    ${url}    ${browser_type}

StopBrowser
    ShutdownBrowser
