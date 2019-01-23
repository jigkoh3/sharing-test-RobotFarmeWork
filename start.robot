*** Settings ***
Library           Selenium2Library
Library           ExtendedSelenium2Library
Library           BuiltIn
Library           String

Suite Teardown    Close Browser

*** Variable ***
${url}            about:blank
*** Test Cases ***
Open Chrome Browser
    Open Browser    ${url}    chrome

*** Keywords ***
