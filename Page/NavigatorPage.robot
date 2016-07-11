*** Settings ***
Library           Selenium2Library
Resource          ../globalConfig/testEnv.robot

*** Variables ***
${ERROR_MESSAGE_LOCATOR}    ${EMPTY}
${TOP_LOGO_IMAGE_LOCATOR}    //img[contains(@src, 'logo.gif')]
${NAVIGATOR_PAGE_TOP_LOGO_IMAGE_LOCATOR}    //img[@src='images/logo.gif']

*** Keywords ***
Is Top Logo Image Visible

Wait Top Logo Image
    Wait Until Element Is Visible    ${TOP_LOGO_IMAGE_LOCATOR}    ${SELENIUM_DEFAULT_TIMEOUT}
