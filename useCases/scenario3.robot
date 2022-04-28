*** Settings ***
Resource    ../keywords/connexion.robot
Resource     ../keywords/commun.robot
Resource     ../ressources/URL.robot
Resource     ../ressources/locators.robot


*** Test Cases ***
Scenario_3
    [Documentation]    Execute third scenario
    [Tags]             scenario3
    Ouvrir application Web    ${URL}
    mouse over button
    Validate that the message is displayed     ${mouseovermsg}    MouseOver Done

    [Teardown]     Finalise_TestCase