*** Settings ***
Library  SeleniumLibrary
*** Test Cases ***
alert
    open browser      https://demoqa.com/alerts    chrome
    maximize browser window
    sleep  3
    click element   xpath://*[@id="timerAlertButton"]
    sleep  3
    #handle alert    accept
    handle alert    dismiss
    sleep  3
    close browser
ALERT 2
    open browser    https://demoqa.com/alerts   chrome
    maximize browser window
    set selenium timeout    50 seconds
    wait until page contains    xpath://*[@id='confirmButton']//self::button
    click element   xpath://*[@id='confirmButton']//self::button
    capture element screenshot  xpath://*[@id='confirmButton']//self::button    alert.png
    handle alert    accept

    sleep  3
    close browser
