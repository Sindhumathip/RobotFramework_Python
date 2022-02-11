*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TC1
    Open Browser    browser=chrome    executable_path=${EXECDIR}${/}drivers${/}chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Go To    url=https://google.com
    ${Linkcount}    Get Element Count    tag=a
    Log To Console    {Linkcount}


    @{elements}    Get WebElements    tag=a

    ${text}    Get Text    ${elements}[0]
    Log To Console    ${text}

    Comment    Write for loop to get 0 to 24 index and use it to get text