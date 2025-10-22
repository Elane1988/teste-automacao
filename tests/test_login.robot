*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}       https://drconsulta.com/
${BROWSER}   chrome

*** Test Cases ***
CT001 Logar no Site
    [Documentation]    Verifica se a página inicial do Dr.Consulta é carregada corretamente
    Open Browser    ${URL}    ${BROWSER}
    Wait Until Page Contains Element    //body
    Capture Page Screenshot
    Close Browser
