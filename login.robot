*** Settings ***
Library           Selenium2Library
Library           ExtendedSelenium2Library
Library           BuiltIn
Library           String

#Suite Teardown    Close Browser

*** Variable ***
${url}               http://localhost:4200/login
${delay}               1


*** Test Cases ***
login
    Open Browser    ${url}    chrome
    Input_username
    Set Selenium Speed  ${delay}
    Input_password
    Click_Button_login

login_fail1
    [tags]      fail1
    Open Browser    ${url}    chrome
    Input_username
    Set Selenium Speed  ${delay}
    Click_Button_login

login_fail2
    [tags]      fail2
    Open Browser    ${url}    chrome
    Set Selenium Speed  ${delay}
    Input_password
    Click_Button_login



*** Keywords ***
Input_username
    Input Text  //*[@name="username"]   name
Input_password
    Input Text  //*[@name="password"]   1234

Click_Button_login
    Click Button    //*[@name="btn-login"]
