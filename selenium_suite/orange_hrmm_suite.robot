* Settings *
Library   SeleniumLibrary
Library   OperatingSystem

* Test Cases *
TC1 Valid Login
    Append To Environment variable      path    ${EXECDIR}\\drivers
    Open Browser  url=https://opensource-demo.orangehrmlive.com/    browser=chrome
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Element   name=Submit
    ${url}  Get Location
    Log To Console    ${url}
    Click Element  id=welcome
    Sleep   5s
    Click Element  link=Logout
    Close Browser

TC2 Add Emergency Contact
    Append To Environment Variable      path     ${EXECDIR}\\driver
    Open Browser  url=https://opensource-demo.orangehrmlive.com/    browser=chrome
    Input Text    id=txtUsername    Admin
    Input Password    id=txtPassword    admin123
    Click Element   name=Submit
    Click Element   link=My Info
    Click Element   link=Emergency Contacts
    Click Element   link=btnAddContact
    Input Text    id=emgcontacts_name    Deep
    Input Text    id=emgcontacts_relationship    Father
    Click Element   link=btnAddContact
    Close Browser