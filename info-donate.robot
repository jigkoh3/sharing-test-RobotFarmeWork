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
    Set Selenium Speed  ${delay}
    Click_Button_บริจาก
    Input_name_product
    Click_select_size
    Click_option
    Input_detail_product
    Click_Button_บันทึก

ฺฺBack_Button1
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
Click_Button_บริจาก
    Click Element   //*[@class="mat-flat-button mat-primary"]
Click_select_size
    Click Element   //*[@class="mat-select-arrow"]
Click_option
    Click Element   //*[@id="mat-option-0"]
Click_Button_บันทึก        
    Click Button    //*[@class="full-width mat-flat-button mat-primary"]
Click_Button_ยกเลิก
    Click Button   //*[@class="full-width mat-stroked-button"]

Input_name_product
    Input Text      //*[@id="mat-input-1"]      เสื้อ
Input_detail_product
    Input Text      //*[@class="mat-input-element mat-form-field-autofill-control cdk-text-field-autofill-monitored ng-untouched ng-pristine ng-valid"]     เสื้อกันหนาวสภาพดี