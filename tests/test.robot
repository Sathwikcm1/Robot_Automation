*** Settings ***
Library  SeleniumLibrary
*** Test Cases ***
Navigate To Home Page
    Open Browser    https://example.com    chrome
    Go To    https://example.com/login
    Sleep  5s
    Input Text    id=username    user@example.com
    Input Text    id=password    password123
    Click Button    id=login
    Go To    https://example.com/dashboard
