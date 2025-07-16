*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    String
Library    Datetime

Resource    ../resources/settings.robot

*** Variables***
${CAMINHO_CADASTRO_USUARIO}    usuarios

*** Keywords ***

Cadastrar Usuario
   [Arguments]    ${JSON}      ${NOME}     ${EMAIL}    ${SENHA}    ${ADMIN}

    ${HEADERS}    Create Dictionary    Content-Type=application/json
    #Create Session    Login    ${URL_SERVERREST}    headers=${HEADERS}

    ${BODY}    Format String    ${EXECDIR}/arquivos/json/${JSON}.json
    ...         nome=${NOME}
    ...         email=${EMAIL}
    ...         senha=${SENHA}
    ...         admin=${ADMIN}
    

    ${RESPONSE}     POST    
    ...             url=${URL_SERVERREST}${CAMINHO_CADASTRO_USUARIO}
    ...             data=${BODY}
    ...             headers=${HEADERS}
    ...             expected_status=201
    

    Log    ${RESPONSE.json()}


