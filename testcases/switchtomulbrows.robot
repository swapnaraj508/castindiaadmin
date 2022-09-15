*** Settings ***
Library  SeleniumLibrary
*** Variables ***
*** Test Cases ***
switch to multiple browsers
    open browser    https://demoqa.com/browser-windows      chrome
    maximize browser window
    click element   xpath://*[@id="windowButton"]
    sleep  3
    open browser    https://www.yahoo.com   chrome
    maximize browser window
    sleep  3
    switch browser  1
    switch browser  2

    close all browsers



*** Keywords ***
