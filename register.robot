*** Settings ***
Library                Selenium2Library
Library                ExtendedSelenium2Library
Library                BuiltIn
Library                String

#Suite Teardown         Close Browser

*** Variable ***
${url}               http://localhost:4200/login
${delay}               1



*** Test Cases ***
register
    Open Browser            ${url}                     chrome
    Set Selenium Speed      ${delay}
    Click_Button_register
    Input_firstname
    Input_lastname
    Input_email
    Click_Button_next
    Input_username
    Input_password
    Click_Button_register3

register_back_button
    [Tags]      back_button
    Open Browser            ${url}                     chrome
    Set Selenium Speed      ${delay}
    Click_Button_register
    Input_firstname
    Input_lastname
    Input_email
    Click_Button_next
    Input_username
    Input_password
    Click_back_Button

register_fell1
    [tags]      fell1
    Open Browser            ${url}                     chrome
    Set Selenium Speed      ${delay}
    Click_Button_register
    Input_lastname
    Input_email
    Click_Button_next

register_fell2
    [tags]      fell2
    Open Browser            ${url}                     chrome
    Set Selenium Speed      ${delay}
    Click_Button_register
    Input_firstname
    Input_email
    Click_Button_next

register_fell3
    [tags]      fell3
    Open Browser            ${url}                     chrome
    Set Selenium Speed      ${delay}
    Click_Button_register
    Input_firstname
    Input_lastname
    Click_Button_next

register_fell4
    [tags]      fell4
    Open Browser            ${url}                     chrome
    Set Selenium Speed      ${delay}
    Click_Button_register
    Input_firstname
    Input_lastname
    Input_email
    Click_Button_next
    Input_password
    Click_Button_register3

register_fell5
    [Tags]      fell5
    Open Browser            ${url}                     chrome
    Set Selenium Speed      ${delay}
    Click_Button_register
    Input_firstname
    Input_lastname
    Input_email
    Click_Button_next
    Input_username
    Click_Button_register3






*** Keywords ***
Click_Button_register
    Click Button    //*[@name="btn-register"]
Click_Button_next
    Click Button    //*[@name="btn-next"]
Click_Button_register3
    Click Button    //*[@name="btn-register"]
Click_back_Button
    Click Button   //*[@name="btn-prev"]

Input_firstname
    Input Text      //*[@name="firstname"]      firstname
Input_lastname
    Input Text      //*[@name="lastname"]       lastname
Input_email
    Input Text      //*[@name="email"]      lastname@gmail.com
Input_username
    Input Text      //*[@name="username"]       name
Input_password
    Input Text      //*[@name="password"]     1234 