*** Settings ***
Library    OperatingSystem

*** Test Cases ***
TC1
    Log To Console    ${EXECDIR}${/}output.xml
    File Should Exist    ${EXECDIR}${/}output.xml
    ${output}    Get Binary File    ${EXECDIR}${/}Xpath & CSS selector.txt
    Log To Console    ${output}
    Log    ${output}

    Comment    copying the file
    Copy File    ${EXECDIR}${/}demo.txt    ${EXECDIR}${/}demo_new.txt

    Comment    delete the file
    Remove File    ${EXECDIR}${/}demo_new.txt