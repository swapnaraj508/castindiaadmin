*** Settings ***
Library     SeleniumLibrary
*** Variables ***

${browser}  chrome
${url}  https://demoqa.com/checkbox

*** Test Cases ***
select buttons and checkboxes

    open browser  ${url}    ${browser}
    maximize browser window
    Set Selenium Speed  2seconds
    click element   xpath://button[@title='Toggle']//*[name()='svg']
    click element   xpath://li[@class='rct-node rct-node-parent rct-node-expanded']//li[1]//span[1]//button[1]//*[name()='svg']
    click element     xpath://label[@for='tree-node-notes']//span[@class='rct-checkbox']//*[name()='svg'
radio button check
    open browser    https://parabank.parasoft.com/parabank/admin.htm     ${browser}
    maximize browser window
    sleep  3
    select radio button   accessMode    restxml
    sleep  3
    select radio button   accessMode   restjson
    sleep  2
    select from list by value   loanProvider    Web Service





*** Keywords ***