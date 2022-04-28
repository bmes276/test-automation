*** Settings ***
Resource     ../ressources/locators.robot


*** Keywords ***
insert value on input 1 and verify other inputs
    [Arguments]   ${value}
    log to console    insert value on input 1
    input text        css=input[id="input_text1"]    ${value}
    click on button propagate
    wait until element is visible    css=#text
    Close overlay
    log to console     verify that other inputs contains same value
    FOR    ${i}    IN RANGE    1   4
    sleep  2
    Textfield Value Should Be    xpath=(//input[@name='inputText'])[${i}]    ${value}
    END



click on button propagate
    log to console    click on button propagate
    click element     css=#propagate

Close overlay
    log to console   close overlay
    click element    XPath=//*[contains(text(), 'Close')]

clear all and validate that inputs are empty
     log to console     clear all
     click element    XPath=//*[contains(text(), 'Clear All')]
     Sleep   3
     log to console    inputs are empty
     FOR    ${i}    IN RANGE    1   4
     Wait Until Page Does Not Contain     bad value
     wait until element does not contain   xpath=(//input[@name='inputText'])[${i}]    'bad value'
     ${value}=   Get Text    xpath=(//input[@name='inputText'])[${i}]
     log to console   ${value}
     Run keyword If   '${value}'=='None'    log to console   ${value}
     END

