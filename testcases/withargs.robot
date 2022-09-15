*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/resources.robot
*** Variables ***
${url}  http://qa.castindia.in/allapi/admin/login
${browser}  chrome
*** Test Cases ***
user defined keywords with arguments
    ${acttitle} = Cast India
    ${pagetitle}=lanchbrowser   ${url}    ${browser}
    should be equal  ${acttitle} == ${pagetitle}
    log     ${pagetitle}
    input text  name:email      admin@castindia.in
    input text  name:password   admin@2022
    click element   xpath://*[@id="layoutAuthentication_content"]/main/div/div/div/div[2]/div[2]/form/div[3]/button
    close browser




