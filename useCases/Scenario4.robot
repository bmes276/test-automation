*** Settings ***
Resource     ../keywords/connexion.robot
Resource     ../keywords/commun.robot
Resource     ../ressources/URL.robot
Resource     ../ressources/locators.robot
Resource     ../keywords/keywords-scenario4.robot

*** Variables ***
${value}=    boutayna

*** Test Cases ***
Scenario_4
    [Documentation]    Execute scenario 4
    [Tags]             scenario4
    Ouvrir application Web    ${URL-2}
    insert value on input 1 and verify other inputs  ${value}

    clear all and validate that inputs are empty
    [Teardown]     Finalise_TestCase