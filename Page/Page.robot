*** Settings ***
Library           Selenium2Library

*** Keywords ***
Open Browser And Maximize Window
    [Arguments]    ${url}    ${browser_type}
    Open Browser    ${url}    ${browser_type}
    MaximizeBrowserWindow
