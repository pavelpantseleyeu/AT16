*** Settings ***
Library           Selenium2Library

*** Keywords ***
Open Browser And Maximize Window
    [Arguments]    ${url}    ${browser_type}
    Open Browser    ${url}    ${browser_type}
    MaximizeBrowserWindow

Is Top Logo Image Visible
    [Arguments]    ${top_logo_image_locator}
    Wait Until Element Is Visible    ${top_logo_image_locator}    1000

Wait Top Logo Image
    [Arguments]    ${top_logo_image_locator}
    Is Top Logo Image Visible    ${top_logo_image_locator}
