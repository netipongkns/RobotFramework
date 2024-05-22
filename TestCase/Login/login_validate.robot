*** Settings ***
Library    SeleniumLibrary
#Library    selectorsium2Library
Resource    ../../Valiable/Login_validate_var/Var_Login.robot
Resource    ../../Keyword/Login/Keyword_login_validate.robot

*** Test Cases ***  
Login Vlidable
    Set Selenium Speed    0.2s
    [Documentation]    TestLogin
    Open Browser    ${LinkWeb}    chrome
    Page Should Contain    Test login
    Insert Uusername     student
    Insert Password    Password123
    Submit Button
    Page Should Contain    Success
    Capture Page Screenshot
    Close Browser


Test Invalid USerName
    Set Selenium Speed    0.5s
    [Documentation]    TestLoginNotUsername
    Open Browser    ${LinkWeb}    chrome
    Maximize Browser Window
    Scroll Element Into View    //*[@id="submit"]
    Insert Password    Password123
    Submit Button
    Page Should Contain Element    //*[@id="error"]
    Capture Element Screenshot    //*[@id="error"]
    Close Browser

Login Pattern USername
    Set Selenium Speed    0.2s
    [Documentation]    TestLogin Username
    Open Browser    ${LinkWeb}    chrome
    Page Should Contain    Test login
    Insert Uusername     student
    format Username
    Insert Password    Password123
    Submit Button
    Page Should Contain    Success
    Capture Page Screenshot
    Close Browser

