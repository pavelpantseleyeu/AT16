*** Settings ***
Library           Selenium2Library
Resource          ../globalConfig/testEnv.robot

*** Variables ***
${NAVIGATOR_PAGE_TOP_LOGO_IMAGE_LOCATOR}    //img[@src='images/logo.gif']

*** Keywords ***
Is Navigator Page Top Logo Image Visible
    ${status}    Run Keyword And Return Status    Wait Navigator Page Top Logo Image
    [Return]    ${status}

Wait Navigator Page Top Logo Image
    Wait Until Element Is Visible    ${NAVIGATOR_PAGE_TOP_LOGO_IMAGE_LOCATOR}    ${SELENIUM_DEFAULT_TIMEOUT}    NAVIGATOR PAGE TOP LOGO IMAGE DOES NOT EXISTS
