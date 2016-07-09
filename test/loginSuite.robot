*** Settings ***
Suite Setup       BrowserService.RiseBrowser    ${CMP_ADDRESS}    ${BROWSER_TYPE_CHROME}
Suite Teardown    BrowserService.ShutdownBrowser
Resource          ../Service/LoginService.robot
Resource          ../globalConfig/testEnv.robot
Resource          ../Service/BrowserService.robot

*** Test Cases ***
1. Login Test
    Login And Wait Top Logo Image UI    ${ADMIN_LOGIN}    ${ADMIN_PASSWORD}
