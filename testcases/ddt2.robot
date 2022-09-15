*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/loginresource.robot
Library     Datadriver  ../TestData/tdata.xls
Suite Setup       Open my browser
Suite Teardown      close browser
Test Template   Invalid login

*** Test Cases ***
testwithxlsheet using   ${username}     ${password}
*** Keywords ***
Invalid login
    [Arguments]    ${username}     ${password}
    Input username  ${username}
    Input password      ${password}
    click login button
    Error message should be visible

