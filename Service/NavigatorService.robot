*** Settings ***
Resource          ../Page/Page.robot

*** Keywords ***
Check Navigator Page Status
    [Arguments]    ${logo_status}
    Check Page Status    ${logo_status}    NAVIGATOR
