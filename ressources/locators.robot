*** Settings ***
Documentation    Suite description

*** Variables ***

${Button-click}   css=button[id="buttonClick"]
${DBLCLICK}       css=#buttonDblClick
${MouseOver}      css=#buttonMouseOver

${MsgCLIck}       css=#buttonClickMsg
${dbClickDone}    css=#buttonDblClickMsg
${mouseovermsg}    css=#buttonMouseOverMsg

${empty}=  ''