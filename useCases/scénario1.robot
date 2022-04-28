*** Settings ***
Resource    ../keywords/connexion.robot
Resource     ../keywords/commun.robot
Resource     ../ressources/URL.robot
Resource     ../ressources/locators.robot


*** Test Cases ***
Scenario_1
    [Documentation]    Execute first scenario
    [Tags]             scenario1
    Ouvrir application Web    ${URL}
    click button       ${Button-click}
    Validate that the message is displayed     ${MsgCLIck}   Click Done

    [Teardown]     Finalise_TestCase


