*** Settings ***
Library   SeleniumLibrary

*** Test Cases ***
Open Google
  Open Browser    https://google.com    Chrome
  Maximize Browser Window
  Sleep     5s
  Close Browser
