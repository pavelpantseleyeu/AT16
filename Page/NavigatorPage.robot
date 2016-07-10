*** Settings ***
Library           Selenium2Library

*** Variables ***
${NAVIGATOR_PAGE_TOP_LOGO_IMAGE_LOCATOR}    //img[@src='images/logo.gif']

*** Keywords ***
Wait For Navigator Page
    Wait Top Logo Image
