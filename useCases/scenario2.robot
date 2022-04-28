*** Settings ***
Resource    ../keywords/connexion.robot
Resource     ../keywords/commun.robot
Resource     ../ressources/URL.robot
Resource     ../ressources/locators.robot


*** Test Cases ***
Scenario_2
    [Documentation]    Execute second scenario
    [Tags]             scenario2
    Ouvrir application Web    ${URL}
    double click button
    Validate that the message is displayed     ${dbClickDone}   DblClick Done

    [Teardown]     Finalise_TestCase