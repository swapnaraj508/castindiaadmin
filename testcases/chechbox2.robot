*** Settings ***

Library  SeleniumLibrary
*** Variables ***
${browser}  chrome
${url}  https://demo.applitools.com/

*** Test Cases ***
Chechbox test
    open browser    ${url}      ${browser}
    maximize browser window
    sleep  2
    click element   xpath://input[@type='checkbox']
    sleep  3

    close browser
*** Keywords ***
