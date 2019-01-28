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
บริจาก
    Open Browser    ${url}    chrome
    Input_username
    Set Selenium Speed  ${delay}
    Input_password
    Click_Button_login
    
    Set Selenium Speed  ${delay}
    Click_Button_บริจาก
    Click_Button_UploadImg
    Input_name_product
    Click_select_size
    Click_option
    Input_detail_product
    Click_Button_บันทึก

Back_Button1
    [Tags]      Back_Button1
    Open Browser    ${url}    chrome
    Set Selenium Speed  ${delay}
    Click_Button_บริจาก
    Click_Button_ยกเลิก

Back_Button2
    [Tags]      Back_Button2
     Open Browser    ${url}    chrome
    Set Selenium Speed  ${delay}
    Click_Button_บริจาก
    Input_name_product
    Click_select_size
    Click_option
    Input_detail_product
    Click_Button_ยกเลิก




*** Keywords ***
Input_username
    Input Text  //*[@name="username"]   name
Input_password
    Input Text  //*[@name="password"]   1234
Click_Button_login
    Click Button    //*[@name="btn-login"]

Click_Button_บริจาก
    Click Button   //*[@name="btnOnCreateDonate"]
Click_Button_UploadImg
    Click Button    //*[@name="btnUploadImg"]
Click_select_size
    Click Element   //*[@class="mat-select-arrow"]
Click_option
    Click Element   //*[@ng-reflect-value="S"]
Click_Button_บันทึก        
    Click Button    //*[@name="btnSave"]
Click_Button_ยกเลิก
    Click Button   //*[@name="btnCancel"]

Input_name_product
    Input Text      //*[@name="inputName"]      เสื้อ
Input_detail_product
    Input Text      //*[@name="inputDetail"]     เสื้อกันหนาวสภาพดี