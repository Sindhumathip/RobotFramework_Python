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

    FOR    ${i}    IN RANGE    1    ${linkcount}
        ${text}    Get Text    ${elements}[${i}]
        Log To Console    ${text}

        Run Keyword If    '${text}'=='Images'    Click Element    ${elements}[${i}]
        Exit For Loop If    '${text}'=='Images'

    END

TC2
        Open Browser    browser=chrome    executable_path=${EXECDIR}${/}drivers${/}chromedriver
        Set Selenium Implicit Wait    30s
        Set Window Size    600    800
        Go To    url=http://google.com
        ${width}    ${height}    Get Window Size
        Log To Console    ${width}
        Log To Console    ${height}


TC3 Mouse Text

        Open Browser    browser=chrome    executable_path=${EXECDIR}${/}drivers${/}chromedriver
        Set Selenium Implicit Wait    30s

        Go To    url=https://nasscom.in/
        Mouse Over    xpath=//a[text()='Membership']
        Click Element    xpath=//a[text()='Members Listing']