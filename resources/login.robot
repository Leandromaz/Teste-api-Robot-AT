*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    String
Library    DateTime


Resource    ../resources/settings.robot

*** Variables***
${URL_SERVERREST}    https://serverest.dev/
${CAMINHO_LOGIN}    login
${TOKEN}    eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6ImxlYW5kcm90ZXN0ZUBnbWFpbC5jb20iLCJwYXNzd29yZCI6InRlc3RlMTIzIiwiaWF0IjoxNzUyOTU0NjQ5LCJleHAiOjE3NTI5NTUyNDl9.EYX3np2EwmrAW3fDzeGPSiL3SHfoEGhGNlyEv0sO7kQ

*** Keywords ***

Realizar Login
    [Arguments]    ${JSON}   ${EMAIL}    ${SENHA}

    ${HEADERS}    Create Dictionary    Content-Type=application/json
    

    ${BODY}    Format String    ${EXECDIR}/arquivos/json/${JSON}.json   

    ...         email=${EMAIL}
    ...         senha=${SENHA}

    ${RESPONSE}     POST    
    ...             url=${URL_SERVERREST}${CAMINHO_LOGIN}
    ...             data=${BODY}
    ...             headers=${HEADERS}
    Should Be True  ${response.status_code} == 200 or ${response.status_code} == 201  
    Log    ${RESPONSE.json()} 
          
    # ${TOKEN}   Get From Dictionary    ${RESPONSE.json()}    Authorization
    # Log    Token extraído: ${TOKEN}



   


