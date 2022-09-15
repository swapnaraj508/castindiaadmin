*** Settings ***
Library  SeleniumLibrary
Variables  ../pageObjects/Elementlocations.py

*** Keywords ***
open my browser
    [Arguments]  ${siteurl}     ${browser}
    open browser    ${siteurl}     ${browser}
    maximize browser window

Enter first name
    [Arguments]     ${firstname}
    input text   ${txt_firstname}    ${firstname}

Enter last name
    [Arguments]     ${lastname}
    input text      ${txt_lastname}     ${lastname}

Enter EmailID
    [Arguments]  ${emailid}
    input text      ${txt_emailid}      ${emailid}
    execute javascript   window.scrollTo(0,document.body.scrollHeight)

Select gender
    #sleep  5

    click element   //*[@id="genterWrapper"]/div[2]/div[2]/label

Enter mobile number

    [Arguments]     ${mobilnum}
    input text      ${txt_mobilenum}    ${mobilnum}

Enter DOB
    [Arguments]     ${dob}
    Convert Date    ${txt_DOB}     ${dob}


enter subjects
    [Arguments]     ${subjects}
    input text      ${txt_subjects}     ${subjects}

Select hobbies
    select checkbox     ${select_hobbies}

upload picture
    [Arguments]     ${picture}
    input text      ${upload_picture}       ${picture}

Enter current address
    [Arguments]     ${curraddress}
    input text      ${txt-curraddress}      ${curraddress}

close all browsers
    close all browsers

