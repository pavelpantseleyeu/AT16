*** Settings ***
Suite Setup       StartBrowser    ${CMP_ADDRESS}    ${BROWSER_TYPE_CHROME}
Suite Teardown    StopBrowser
Resource          ../Service/LoginService.robot
Resource          ../globalConfig/testEnv.robot
Resource          ../Service/BrowserService.robot

*** Test Cases ***
1. Login Test
    Login Service UI    ${ADMIN_LOGIN}    ${ADMIN_PASSWORD}
