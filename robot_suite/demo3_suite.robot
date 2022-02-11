*** Settings ***
Library    Collections

*** Comments ***
working with  local variable scalar, list, dic

*** Test Cases ***
TC1
    Set Local Variable    ${firstname}       sindhu
    ${lastname}     Set Variable    mathi
    Log To Console    ${firstname} ${lastname}

    @{fruits}   Create List    orange    apple     grapes
    Log To Console    ${fruits}
    Log To Console    ${fruits}[0]

    FOR    ${color}    IN    @{fruits}
        Log To Console    ${color}
    END

    Log List   ${fruits}

    Set Global Variable    ${otp}   9876

TC2
    Log To Console    ${otp}
#    Log List   ${fruits}
    &{dic}   Create Dictionary   firstname=sindhu   lastname=mathi   mobile=636922977
    Log To Console    ${dic}[lastname]
