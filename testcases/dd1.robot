*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/loginresource.robot
Suite Setup     Open my browser
Suite Teardown  close browser
Test Template   Invalid login

*** Test Cases ***                      ${username}             ${password}
Right username empty password          admin@castindia.in
right username wrong password          admin@castindia.in       asdjnmg
wrong username write password          admin12@castindia.in     admin@2022
wrong username wrong password          admin32@castindi.co      adminas123
wrong username empty password          gdashhewhad@jdsj


*** Keywords ***
Invalid login
    [Arguments]   ${username}    ${password}
    input username    ${username}
    input password    ${password}
    click login button
    Error message should be visible
