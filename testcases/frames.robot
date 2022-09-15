*** Settings ***
Library  SeleniumLibrary
*** Test Cases ***
frames
    open browser    https://demoqa.com/nestedframes     chrome
    select frame
