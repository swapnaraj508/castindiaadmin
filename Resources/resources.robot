*** Keywords ***
lanchbrowser
    [Arguments]  ${appurl}  ${appbrowser}
    open browser    ${appurl}   ${appbrowser}
    maximize browser window
    ${title} = Get Title
    [Return]    ${title}