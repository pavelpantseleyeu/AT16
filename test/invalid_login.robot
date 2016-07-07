*** Settings ***
Resource          ../Service/InvalidLoginService.robot

*** Test Cases ***
1. Invalid Username
    Login With Invalid User Name And Wait Error Message UI

2. Invalid Password
    Login With Invalid Password And Wait Error Message UI

3. Empty Password
    Login With Empty Password And Wait Error Message UI
