*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    String
Library    Datetime

*** Variables***
${URL_SERVERREST}    https://serverest.dev/
${CAMINHO_LOGIN}    login

*** Keywords ***
#Conectar na api serverest
   # Create Session    serverest    ${URL_SERVERREST}


Realizar Login
    [Arguments]    ${JSON}   ${EMAIL}    ${SENHA}

    ${HEADERS}    Create Dictionary    Content-Type=application/json
    #Create Session    Login    ${URL_SERVERREST}    headers=${HEADERS}

    ${BODY}    Format String    ${EXECDIR}/arquivos/json/${JSON}.json
    ...         email=${EMAIL}
    ...         senha=${SENHA}

    ${RESPONSE}     POST    
    ...             url=${URL_SERVERREST}${CAMINHO_LOGIN}
    ...             data=${BODY}
    ...             headers=${HEADERS}
    ...             expected_status=200
    

    Log    ${RESPONSE.json()}

