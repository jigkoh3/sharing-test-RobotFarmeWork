*** Settings ***
Library           Selenium2Library
Library           ExtendedSelenium2Library
Library           BuiltIn
Library           String

#Suite Teardown    Close Browser

*** Variable ***
${url}               http://3.1.6.15
${delay}               1


*** Test Cases ***
การกดรับ
    Open Browser    ${url}    chrome
    Input_username
    Set Selenium Speed  ${delay}
    Input_password
    Click_Button_login
    Set Selenium Speed  ${delay}
    clicl_item
    Set Selenium Speed  ${delay}
    Click_receive

*** Keywords ***
Input_username
    Input Text  //*[@name="username"]   name
Input_password
    Input Text  //*[@name="password"]   1234
Click_Button_login
    Click Button    //*[@name="btn-login"]
clicl_item
    Click Element   //*[@name="divColsm12Md4Lg3Ngfor"]
Click_receive
    Click Button    //*[@name="btnDonateDetailAccept"]


