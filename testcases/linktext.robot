*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${url}   http://qa.castindia.in/allapi/admin
${browser}  chrome
*** Test Cases ***
get linktext
    open browser    ${url}  ${browser}
    maximize browser window
    input text   id:email    admin@castindia.in
    input text    id:password     admin@2022
    click element     xpath://button[normalize-space()='Login']
    ${Alllinkcount}=    get length     xpath://a
    log to console  ${Alllinkcount}

    @{listitems}     create list


    FOR     ${i}     IN RANGE   1   ${Alllinkcount}+6
    ${linktext}=    get text    xpath:(//a)[${i}]
    log to console      ${linktext}
    END

    close browser
