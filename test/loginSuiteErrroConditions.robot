*** Settings ***
Test Template     Login And Wait Top Logo Image UI
Resource          ../Service/LoginService.robot

*** Test Cases ***    LOGIN                                           PASSWORD
1. Login Test         [Setup]                                         Run Keywords         kw1    ${PROJECT_NAME}    100    AND    kw2
                      Inalid Login

2. Login Test         [Setup]                                         Run Keywords         kw1    ${PROJECT_NAME}    100    AND    kw2
                      Invalid Loing dfkjdksfkdsg;jdkfjglkdfgjdlkfg    ${ADMIN_PASSWORD}

3. Login Test         [Setup]                                         Run Keywords         kw1    ${PROJECT_NAME}    100    AND    kw2
                      $*#&*(#&(*#&(*#

*** Keywords ***
