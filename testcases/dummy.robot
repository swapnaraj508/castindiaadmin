*** Settings ***

Library  SeleniumLibrary
*** Test Cases ***
radiobutton
    open browser       https://demoqa.com/radio-button     chrome
    maximize browser window
    #select radio button     gender  Female
    sleep  5
    click element    //*[@id="app"]/div/div/div[2]/div[2]/div[2]/div[2]/label
