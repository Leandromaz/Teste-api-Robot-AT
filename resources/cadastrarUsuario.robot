*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    String
Library    Datetime

Resource    ../resources/settings.robot

*** Variables***
${CAMINHO_CADASTRO_USUARIO}    usuarios
${ID_ALTERACAO}            z0a6DrpqUlEJtQfx


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
    Should Be True  ${response.status_code} == 200 or ${response.status_code} == 201  
    Log    ${RESPONSE.json()}




