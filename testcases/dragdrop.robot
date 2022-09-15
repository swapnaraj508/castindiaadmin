*** Settings ***
Library  SeleniumLibrary
*** Test Cases ***
dragdrop
    open browser    https://demoqa.com/droppable    firefox
    maximize browser window
    #click link  Accept
    sleep  5
    Drag And Drop    xpath://div[@id='draggable']    xpath://div[@id='droppable']
    Capture Page Screenshot     dragdrop.png
    sleep  3
    close browser
