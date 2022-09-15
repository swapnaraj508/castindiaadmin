*** Settings ***
Library  SeleniumLibrary
*** Variables ***


*** Test Cases ***
multiple browsers
    open browser    https://demoqa.com/browser-windows      chrome
    maximize browser window
    sleep   3
    open browser    https://www.yahoo.com/     chrome
    maximize browser window
    sleep   3
    open browser    https://www.IE.com     chrome
    maximize browser window
    sleep   3

    close all browsers

*** Keywords ***
