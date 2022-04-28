*** Settings ***
Resource     ../ressources/URL.robot
Library         SeleniumLibrary

*** Keywords ***
Ouvrir application Web
    [Documentation]    Ouvre le navigateur WEB
    [Arguments]    ${URL}
    Log to console         navigate to the page
    Open Browser           ${URL}       browser=${BROWSER}
    Sleep    3s