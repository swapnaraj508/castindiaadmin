*** Settings ***
Library  SeleniumLibrary
*** Test Cases ***
browserfunctions
    open browser    https://demoqa.com/automation-practice-form     chrome
    maximize browser window
    capture page screenshot     browserfunctions.png
    ${loc} =    get location
    log to console      ${loc}
    sleep  3
    go to   https://www.yahoo.com
    sleep  3
    go back
    sleep  3
    close browser
