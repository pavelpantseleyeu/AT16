*** Settings ***
Resource          ../Page/LoginPage.robot
Resource          ../Page/NavigatorPage.robot

*** Keywords ***
Login With Invalid User Name And Wait Error Message UI
    Login
    Wait Login Error Message

Login With Invalid Password And Wait Error Message UI
    InvalidPasswordLogin
    Wait Login Error Message

Login With Empty Password And Wait Error Message UI
    EmptyPasswordLogin
    Wait Login Error Message
