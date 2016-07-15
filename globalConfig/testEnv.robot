*** Settings ***

*** Variables ***
${ADMIN_LOGIN}    admin
${ADMIN_PASSWORD}    admin
${SELENIUM_DEFAULT_TIMEOUT}    17
${BROWSER_TYPE}    gc
${BROWSER_ID}     ${Empty}
${LOGIN_PAGE_URL}    http://epbygomw0158:18081/cmp/login
${NUMBER_OF_TEST_CHARACTERS}    8
${LOGIN_PAGE_URL_WITH_ERROR}    http://epbygomw0158:18081/cmp/login?login_error=1
