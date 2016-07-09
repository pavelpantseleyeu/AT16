*** Settings ***
Resource          ../Page/Page.robot

*** Keywords ***
RiseBrowser
    [Arguments]    ${url}    ${browser_type}
    Page.RiseBrowser    ${url}    ${browser_type}

ShutdownBrowser
    Page.ShutdownBrowser
