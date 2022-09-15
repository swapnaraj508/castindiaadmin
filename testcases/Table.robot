*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${url}      http://qa.castindia.in/allapi/admin
${browser}      chrome
${payment_url}      http://qa.castindia.in/allapi/admin/payment
${length_rows}     xpath://table[@id='listing']/tbody/tr
${length_cols}      Xpath://table[@id='listing']/tbody/tr[1]/th

*** Test Cases ***
Table elements
    open browser    ${url}      ${browser}
    maximize browser window
    input text  id:email    admin@castindia.in
    input text    id:password     admin@2022
    click element     xpath://button[normalize-space()='Login']
    go to    ${payment_url}
    ${count}=    get count    ${length_rows}
    should be true   ${count}=='7'
    #log to console      ${rows}
    log     ${count}
    ${count}=    get count    ${length_cols}
    should be true  ${count}=='6'
    log     ${count}
    #log to console    ${cols}
    close browser

