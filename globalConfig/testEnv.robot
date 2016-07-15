*** Settings ***

*** Variables ***
${ADMIN_LOGIN}    admin
${ADMIN_PASSWORD}    admin
${LOGIN_PAGE_URL}    http://epbygomw0158:18081/cmp/login
${NUMBER_OF_TEST_CHARACTERS}    8
${LOGIN_PAGE_URL_WITH_ERROR}    ${LOGIN_PAGE_URL}?login_error=1
