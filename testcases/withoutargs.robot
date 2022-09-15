*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${url}  http://qa.castindia.in/allapi/admin/login
${browser}      chrome
*** Test Cases ***
user defined keywords without arguments
    lanchbrowser
    input text  name:email      admin@castindia.in
    input text  name:password   admin@2022
    click element   xpath://*[@id="layoutAuthentication_content"]/main/div/div/div/div[2]/div[2]/form/div[3]/button
*** Keywords ***
lanchbrowser
    open browser    ${url}  ${browser}
    maximize browser window
