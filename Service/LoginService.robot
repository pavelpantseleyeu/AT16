*** Settings ***
Resource          ../Page/LoginPage.robot
Resource          ../Page/Page.robot

*** Keywords ***
Login And Wait Top Logo Image UI
    [Arguments]    ${top_logo_image_locator}    ${login}    ${password}
    Login    ${login}    ${password}
    ${logo_status}    Is Top logo Image Visible    ${top_logo_image_locator}
    [Return]    ${logo_status}
