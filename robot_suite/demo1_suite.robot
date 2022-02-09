*** Settings ***
Library    DateTime
** Test Cases **
TC1 print Name
    Log to console     hello,everyone

TC2 print Date
    ${date}     Get Current Date
    Log To Console  ${date}

TC3 store Data
    Set Local Variable    ${name}       Sindhumathi
    Log To Console  ${name}
    Log  hello, ${name}
    ${title}    Set Variable   robotframeworksession
    Log To Console    ${title}

TC4 Add Number
    Set Local Variable    ${num1}        40
    Set Local Variable    ${num2}        40
    Set Local Variable    ${sum}         ${${num1}+${num2}}
    Log To Console    ${sum}
    
TC5 Area of Circle
    Set Local Variable    ${radius}      10
    Set Local Variable    ${pie}        3.14
    ${res}    Evaluate    ${radius}*${pie}*${radius}
    Log To Console    ${res}cm2

TC6
    Set Local Variable    ${browser}    chrome

    IF    '${browser}'=='chrome'
        Log To Console    Yea! It's Chrome
    ELSE
        Log To Console    No! It's not Chrome
    END

 TC7 For loop

    FOR    ${i}    IN RANGE   1   11   1
        Log To Console    ${i}

    END
