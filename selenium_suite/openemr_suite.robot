*** Settings ***
Library   SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
TC1 Valid Login
    Open Browser    url=https://demo.openemr.io/b/openemr/index.php    browser=chrome    executable_path=${EXECDIR}\\drivers\\chromedriver
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Input Text    id=authUser    admin
    Input Password    id=clearPass    pass
    Select From List By Label    name=languageChoice     English (Indian)
    Click Element    //*[@id="login_form"]
    ${title}     Get Title
    Log To Console    ${title}
    Title Should Be    OpenEMR
    Close Browser
    