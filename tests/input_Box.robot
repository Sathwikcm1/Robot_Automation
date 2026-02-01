*** Settings ***
Library    SeleniumLibrary
Test Teardown    Cleanup My Test
*** Variables ***
${browser}  chrome
${url}      https://www.qa-practice.com/elements/input/email

*** Test Cases ***
TestingInputBox
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    ${Title}=    Get Title
    Should Contain    ${Title}    QA Practice
    Click Element    xpath=//a[normalize-space(.)='Text input']
    Input Text    xpath=//input[@id='id_text_string']    Something
    Press Keys    xpath=//input[@id='id_text_string']    ENTER
    Wait Until Element Is Visible    xpath=//div[@id='result']    10s
    Element Should Contain  xpath=//div[@id='result']    Something
  #Clear Element Text    xpath=//div[@id='result']
    Sleep    2s
    Close Browser
*** keywords ***

Cleanup My Test
  Close Browser
