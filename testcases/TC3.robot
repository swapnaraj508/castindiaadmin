*** settings ***
Library     SeleniumLibrary
*** variables ***

${browser}  chrome
${url}  http://qa.castindia.in/allapi/admin

*** Test Cases ***
InValid input Test

    open browser  ${url}    ${browser}
    maximize browser window
    ${"email_txt"}  set variable    id:email
    element should be visible   ${"email_txt"}
    #element should be enabled   ${"email_txt"}
    input text  ${"email_txt"}  admin1@gmail.com
    sleep  5
    ${"passward_txt"}   set variable  id:password
    element should be visible   ${"passward_txt"}
    #element should be enabled  ${"passward_txt"}
    input text  ${"passward_txt"}   admin@2022
    click element   xpath://button[normalize-space()='Login']


*** Keywords ***