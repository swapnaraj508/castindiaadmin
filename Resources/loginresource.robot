*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${Login URL}    http://qa.castindia.in/allapi/admin/login
${BROWSER}  chrome
*** Keywords ***
Open my browser
    open browser    ${Login URL}    ${BROWSER}
    maximize browser window

open login page
    go to   ${Login URL}

Input username
    [Arguments]     ${username}
    input text  id:email      ${username}

Input password
    [Arguments]     ${password}
    input text  id:password     ${password}

close browser
    close all browsers

click login button
    click element   xpath://button[normalize-space()='Login']

click logout button
    click link  xpath://a[@id='userDropdown']
    select from list by label    Logout

Error message should be visible
    page should contain     Sorry! Invalid email and password
    #page should contain     please enter the password
Dashboard page should be visible
    page should contain     Dashboard

