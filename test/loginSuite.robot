*** Settings ***
Suite Setup       Start Browser    ${LOGIN_PAGE_URL}    ${BROWSER_TYPE_CHROME}
Suite Teardown    Stop Browser
Resource          ../Service/LoginService.robot
Resource          ../globalConfig/testEnv.robot
Resource          ../Service/BrowserService.robot

*** Test Cases ***
1. Login Test
    Login Service UI    ${ADMIN_LOGIN}    ${ADMIN_PASSWORD}
