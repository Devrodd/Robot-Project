*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL_BASE}    https://certiqa-qazando.com/
${BROWSER}     chrome

*** Test Cases ***
Abrir Página Inicial
    Open Browser    ${URL_BASE}    ${BROWSER}
    Title Should Contain    CertiQA Academy
    Capture Page Screenshot
    Close Browser
