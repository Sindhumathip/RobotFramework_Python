*** Variables ***
${MY_NAME}      Sindhumathi Paramasivam
@{COLORS}    yellow    green    red    blue    pink



*** Test Cases ***
TC1
    Log To Console    ${EXECDIR}
    Log To Console    ${CURDIR}
    Log To Console    ${OUTPUT_DIR}
    Log To Console    ${EXECDIR}${/}driver${/}chromedriver.exe
    Log To Console    ${SUITE_NAME}
    Log To Console    ${TEST_NAME}
    Log To Console    ${TEMPDIR}
    Log To Console    ${MY_NAME}
    Log To Console    ${COLORS}
    Log To Console    ${COLORS}[0]

TC2
    ${count}    Get Length    ${COLORS}
    Log To Console    ${count}

  FOR    ${i}    IN RANGE    0    ${count}    1
      Log To Console    ${COLORS}[${i}]

  END

TC3
  FOR    ${color}    IN    @{COLORS}
      Log To Console    ${color}

  END


