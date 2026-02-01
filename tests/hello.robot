*** Settings ***
Library    BuiltIn

*** Variables ***
${NAME}    Wick

*** Test Cases ***
Say Hello
    Greet User

*** Keywords ***
Greet User
    Log    Hello ${NAME}

  #:
