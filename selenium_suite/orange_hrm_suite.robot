*** Settings ***
Library   SeleniumLibrary
Library   OperatingSystem

*** Test Cases ***
TC1 Valid Login
    Append To Environment Variable      path    ${EXECDIR}\\drivers
    Open Browser    url=https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html    browser=chrome