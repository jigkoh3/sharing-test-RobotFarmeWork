*** Settings ***
Library                Selenium2Library
Library                ExtendedSelenium2Library
Library                BuiltIn
Library                String

#Suite Teardown         Close Browser

*** Variable ***
${url}               http://3.1.6.15
${delay}               1



*** Test Cases ***
register
    Open Browser            ${url}                     chrome
    Set Selenium Speed      ${delay}
    Click_Button_register
    Input_username
    Input_password
    Click_Button_next
    Input_firstname
    Input_lastname
    Input_email
    Click_ButtonII
    Click_select_size
    Click_size_s
    Click_Button_FinishRegister

Back_Button
    [tags]      Back_Button
    Open Browser            ${url}                     chrome
    Set Selenium Speed      ${delay}
    Click_Button_register
    Input_username
    Input_password
    Click_Button_next
    Input_firstname
    Input_lastname
    Input_email
    Click_ButtonII
    Click_select_size
    Click_size_s
    Click_back_Button1
    Click_back_Button2
    Click_back_Button3
    





*** Keywords ***
Click_Button_register
    Click Button    //*[@name="btn-register"]
Click_Button_next
    Click Button    //*[@name="btnNext1"]
Click_ButtonII
    Click Button    //*[@name="btnNext2"]
Click_select_size
    Click Element   //*[@class="mat-select-arrow-wrapper"]
Click_size_s
    Click Element   //*[@name="matOptionS"]
Click_Button_FinishRegister
    Click Button    //*[@name="btnFinishRegister"]  
Click_back_Button1
    Click Element   //*[@aria-posinset="1"]
Click_back_Button2
    Click Element   //*[@aria-posinset="2"]
Click_back_Button3
    Click Element   //*[@aria-posinset="3"]    

Input_firstname
    Input Text      //*[@name="inputFirstName"]      firstname
Input_lastname
    Input Text      //*[@name="inputLastName"]       lastname
Input_email
    Input Text      //*[@name="inputEmail"]      lastname@gmail.com
Input_username
    Input Text      //*[@name="inputUsername"]       name
Input_password
    Input Text      //*[@name="inputPassword"]     1234 
