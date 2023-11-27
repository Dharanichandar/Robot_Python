*** Settings ***

Documentation        This is a Documentation for TRB140
Library              SeleniumLibrary

*** Test Cases ***
This is login Page
    #robot -d Results Tests/Login_Pg.robot
    [Documentation]    For Login page
    [Tags]             open_Browser, enter a username and password, click login

    #Open a browser
    Open Browser    http://192.168.2.1/    chrome
    Maximize Browser Window

    #Enter a username & password
    Input Text      //input[@id="username"]    admin
    Input Text      //input[@id="password"]    Qwerty@123
    Sleep           3s

    #Click login button
    Click Button    Log in
    Sleep           5s
    Log             login Sucessfully