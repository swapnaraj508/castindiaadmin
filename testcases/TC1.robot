*** Settings ***
Library     SeleniumLibrary
*** Variables ***

${url}  http://qa.castindia.in/allapi/admin

*** Test Cases ***
Logintest
    open browser   http://qa.castindia.in/allapi/admin/login
    input text  id:email    admin@castindia.in
    input text  id:password     admin@2022
    click element   xpath://button[normalize-space()='Login']
    close browser
*** Keywords ***

