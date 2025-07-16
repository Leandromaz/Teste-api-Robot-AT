*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    String
Library    Datetime

*** Variables***
${URL_SERVERREST}    https://serverest.dev
${CAMINHO_LOGIN}    /login

*** Keywords ***
Conectar na api serverest
    Create Session    serverest    ${URL_SERVERREST}


Realizar login
    [Arguments]    ${email}    ${senha}
    Log To Console    Criando um dicionario de dados que contem o email e a senha do login
    ${body} =    Create Dictionary    email=${email}    password=${senha}
    Log to console  Enviando uma requisição do tipo post para o login
    ${response} =    POST Request    serverest    ${CAMINHO_LOGIN}    json=${body}
    log to console  verificando  se o status code é 200
    Should Be Equal As Strings    ${response.status_code}  200
    Log To Console    ${response.json()}
    [Return]    ${response.json()}
