*** Keywords ***
Check Page Status
    [Arguments]    ${logo_status}    ${page_name}
    ${message}    Catenate    ${page_name}    PAGE STATUS MUST BE TRUE
    Should Be True    ${logo_status}    ${message}
