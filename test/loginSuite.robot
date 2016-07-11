*** Settings ***
Suite Setup       Start Browser    ${LOGIN_PAGE_URL}    ${BROWSER_TYPE_CHROME}
Suite Teardown    Stop Browser
Suite Setup       Open Browser And Maximize Window    ${CMP_ADRESS}    ${BROWSER_TYPE}
Suite Teardown    CloseBrowser
Test Setup        Wait For Login Page
Resource          ../Service/LoginService.robot
Resource          ../globalConfig/testEnv.robot
Resource          ../Service/BrowserService.robot
Resource          ../Service/NavigatorService.robot
Resource          ../Page/NavigatorPage.robot
Resource          ../globalConfig/testEnv.robot

*** Test Cases ***
1. Login Test
    Login Service UI    ${ADMIN_LOGIN}    ${ADMIN_PASSWORD}
    
2. Login Test   
    [Documentation]    Valid user is login
    ...    1.Type valid user login to login input
    ...    2.Type valid user password to password input
    ...    3.Click on to Submit button
    ...    4.Submit the dialog message
    ...    5.Verify that user has login
    ${logo_status}    Login And Wait Top Logo Image UI    ${NAVIGATOR_PAGE_TOP_LOGO_IMAGE_LOCATOR}    ${ADMIN_LOGIN}    ${ADMIN_PASSWORD}
    Check Navigator Page Status    ${logo_status}
