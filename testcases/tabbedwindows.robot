*** Settings ***
Library  SeleniumLibrary
*** Variables ***
*** Test Cases ***
tabbed windows
    open browser    https://demoqa.com/browser-windows      chrome
    maximize browser window
    click element   xpath://*[@id="tabButton"]
    sleep  3
    close browser
*** Keywords ***
