*** Settings ***
Resource          ../Page/LoginPage.robot
Resource          ../Page/Page.robot

*** Keywords ***
Login Service UI
    [Arguments]    ${login}    ${password}
    Login    ${login}    ${password}

Check Login Service
    ${login_error_message_status}=    Is Login Error Message Visible
    [Return]    ${login_error_message_status}
    
Login And Wait Top Logo Image UI
    [Arguments]    ${top_logo_image_locator}    ${login}    ${password}
    Login    ${login}    ${password}
    ${logo_status}    Is Top logo Image Visible    ${top_logo_image_locator}
    [Return]    ${logo_status}
