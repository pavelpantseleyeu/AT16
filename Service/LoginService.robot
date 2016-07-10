*** Settings ***
Resource          ../Page/LoginPage.robot
Resource          ../Page/NavigatorPage.robot
Resource          ../Page/Page.robot

*** Keywords ***
Login And Wait Top Logo Image UI
    [Arguments]    ${top_logo_image_locator}
    Login    ${ADMIN_LOGIN}    ${ADMIN_PASSWORD}
    Wait Top Logo Image    ${top_logo_image_locator}
