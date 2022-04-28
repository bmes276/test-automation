*** Settings ***
Documentation    Suite description



*** Keywords ***
click button
    [Arguments]        ${css-button}
    Log to console     cliquer sur le bouton
    Click element     ${css-button}

double click button
    Log to console         double click on button
    Double Click Element   ${DBLCLICK}

mouse over button
    log to console   mouse over button
    mouse down      ${MouseOver}

Validate that the message is displayed
    [Arguments]       ${btn}   ${message}
    Element should contain    ${btn}    ${message}
    Log to console       message is displayed

Finalise_TestCase
    # gestion des état des tests
    Run Keyword If Test Failed    Log    Test failed
    Run Keyword If Test Failed    Capture Page Screenshot
    Run Keyword If Test Passed    Log    Test passed
    Close Browser