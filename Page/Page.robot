*** Settings ***
Library           Selenium2Library

*** Variables ***
${SELENIUM_DEFAULT_TIMEOUT}    10

*** Keywords ***
Open Browser And Maximize Window
    [Arguments]    ${url}    ${browser_type}
    Open Browser    ${url}    ${browser_type}
    MaximizeBrowserWindow

Is Top Logo Image Visible
    [Arguments]    ${top_logo_image_locator}
    ${status}    Run Keyword And Return Status    Wait Top Logo Image    ${top_logo_image_locator}
    [Return]    ${status}

Wait Top Logo Image
    [Arguments]    ${top_logo_image_locator}
    Wait Until Element Is Visible    ${top_logo_image_locator}    ${SELENIUM_DEFAULT_TIMEOUT}

Check Page Status
    [Arguments]    ${logo_status}    ${page_name}
    ${message}    Catenate    ${page_name}    PAGE TOP LOGO STATUS MUST BE TRUE
    Should Be True    ${logo_status}    ${message}
