*** Settings ***
Library           Selenium2Library

*** Variables ***
${TOP_LOGO_IMAGE_LOCATOR}    //img[@src='images/logo.gif']

*** Keywords ***
Is Top Logo Image Visible
    Wait Until Element Is Visible    ${TOP_LOGO_IMAGE_LOCATOR}    1000

Wait Top Logo Image
    Is Top Logo Image Visible

Wait For Navigator Page
    Wait Top Logo Image
