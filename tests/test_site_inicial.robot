*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://drconsulta.com/

*** Test Cases ***
CT001 - Verificar página inicial do DrConsulta
    [Documentation]    Verifica se a página inicial do site é exibida corretamente
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Reload Page
    ${title}=    Get Title
    Log    O título atual
