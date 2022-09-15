*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/fromresource.robot
*** Variables ***
${browser}      chrome
${siteurl}      https://demoqa.com/automation-practice-form
*** Test Cases ***
formtest
    open my browser  ${siteurl}     ${browser}
    Enter first name    Swapna
    Enter last name     priya
    Enter EmailID   swapn@gmail.com
    execute javascript   window.scrollTo(0,document.body.scrollHeight)
    Select gender
    Enter mobile number     6382738273
    #Enter DOB       09-10-1996
    #enter subjects      python
    select hobbies      Music
    upload picture      C:\Users\rajas\Downloads\girl_205263.webp
    Enter current address       Avasa ABroad
    close all browsers
*** Keywords ***
