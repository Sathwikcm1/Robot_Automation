*** Settings ***
Library    SeleniumLibrary
Test Teardown    Close Browser

*** Variables ***
${youtube_url}    https://www.youtube.com/
${browser}    chrome

*** Test Cases ***
Input Text Verification
  Open Browser    ${youtube_url}    ${browser}
  Maximize Browser Window
  Wait Until Element Is Visible    xpath=//input[@name='search_query']  10s
  Input Text    xpath=//input[@name='search_query']    The Loop
  Press Keys    xpath=//input[@name='search_query']    ENTER
  Textfield Value Should Be    xpath=//input[@name='search_query']    The Loop
  Sleep  5s
