*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html
${browser}  chrome
*** Test Cases ***
scrolling page testing
    open browser    ${url}  ${browser}
    maximize browser window
    click element    xpath://div[@class='keywords-overview']
    sleep  3
    #execute javascript window.scrollTo(0, 1000)
    #scroll element into view    id:Explicit locator strategy
    execute javascript   window.scrollTo(0,document.body.scrollHeight)
    sleep  5
    execute javascript   window.scrollTo(0,-document.body.scrollHeight)
    sleep  5
    close browser
