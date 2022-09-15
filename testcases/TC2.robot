*** settings ***
Library     SeleniumLibrary
*** variables ***

${url}  http://qa.castindia.in/allapi/admin

*** Test Cases ***
Valid input Test

    open browser  ${url}
    input text  id:email    admin@castindia.in
    input text    id:password     admin@2022
    click element     xpath://button[normalize-space()='Login']
    click element   xpath://a[normalize-space()='User Account']
    click element   xpath://a[normalize-space()='Aspirant']
*** Keywords ***
