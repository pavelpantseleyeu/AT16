*** Settings ***

*** Variables ***
${PAGE_URL}       epbygomw0158:18081/cmp/login
${ADMIN_LOGIN}    admin
${ADMIN_PASSWORD}    admin
${SELENIUM_DEFAULT_TIMEOUT}    10
${NUMBER_OF_TEST_CHARACTERS}    8
${BROWSER_TYPE}    gc
${LOGIN_PAGE_URL_WITH_ERROR}    http://epbygomw0158:18081/cmp/login?login_error=1
${RANDOM_TEST_DATA}    ${EMPTY}
