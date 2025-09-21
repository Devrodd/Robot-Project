*** Settings ***
Library    FakerLibrary

*** Test Cases ***
Gerar Dados Falsos
    ${nome}=    FakerLibrary.Name
    Log    Nome gerado: ${nome}

    ${email}=    FakerLibrary.Email
    Log    Email gerado: ${email}
