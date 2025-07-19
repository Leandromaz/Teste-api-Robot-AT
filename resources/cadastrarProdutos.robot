*** Settings ***
Library    RequestsLibrary
Library    Collections
Library    String
Library    Datetime
Library    OperatingSystem

Resource    ../resources/settings.robot

*** Variables***
${CAMINHO_CADASTRO_PRODUTO}            produtos


*** Keywords ***

Cadastrar Produtos
    [Arguments]    ${JSON}    ${NOME}    ${PRECO}    ${DESCRICAO}    ${QUANTIDADE}
     
     
   ${HEADERS}=  Create Dictionary  Content-Type=application/json     Authorization=Bearer ${TOKEN}

    ${BODY}=       Format String    ${EXECDIR}/arquivos/json/${JSON}.json
    ...            nome=${NOME}
    ...            preco=${PRECO}
    ...            descricao=${DESCRICAO}
    ...            quantidade=${QUANTIDADE}

    ${RESPONSE}=   POST
    ...            url=${URL_SERVERREST}${CAMINHO_CADASTRO_PRODUTO}
    ...            data=${BODY}
    ...            headers=${HEADERS}
    Should Be True  ${response.status_code} == 200 or ${response.status_code} == 201  
    Log            ${RESPONSE.json()}



Alterar Produto
    [Arguments]    ${JSON}   ${ID_PRODUTO}     ${NOME}    ${PRECO}    ${DESCRICAO}    ${QUANTIDADE}

    ${HEADERS}=    Create Dictionary    Content-Type=application/json    Authorization=Bearer ${TOKEN}

    ${BODY}=       Format String    ${EXECDIR}/arquivos/json/${JSON}.json
    ...            nome=${NOME}
    ...            preco=${PRECO}
    ...            descricao=${DESCRICAO}
    ...            quantidade=${QUANTIDADE}

    ${RESPONSE}=   PUT
    ...            url=${URL_SERVERREST}${CAMINHO_CADASTRO_PRODUTO}/${ID_PRODUTO}
    ...            data=${BODY}
    ...            headers=${HEADERS}
    Should Be True  ${response.status_code} == 200 or ${response.status_code} == 201          
    Log            ${RESPONSE.json()}


Buscar produto por ID
    [Arguments]    ${ID_PRODUTO}

    ${RESPONSE}    GET              
    ...           url= ${URL_SERVERREST}${CAMINHO_CADASTRO_PRODUTO}/${ID_PRODUTO}
    Should Be True  ${response.status_code} == 200 or ${response.status_code} == 201            
    Log            ${RESPONSE.json()}

Buscar produto por nome   
   [Arguments]    ${NOME_PRODUTO}
   
    ${RESPONSE}        GET              
    ...                url= ${URL_SERVERREST}${CAMINHO_CADASTRO_PRODUTO}?nome=${NOME_PRODUTO}
    Should Be True     ${response.status_code} == 200 or ${response.status_code} == 201            
    Log                ${RESPONSE.json()}

    
Deleta produto por ID
    [Arguments]    ${ID_PRODUTO}

    ${HEADERS}=    Create Dictionary    Content-Type=application/json    Authorization=Bearer ${TOKEN}


    ${RESPONSE}    DELETE            
    ...            url=${URL_SERVERREST}${CAMINHO_CADASTRO_PRODUTO}/${ID_PRODUTO}
    ...            headers=${HEADERS}
    Should Be True  ${response.status_code} == 200 or ${response.status_code} == 201 

    Log            ${RESPONSE.json()}    


# Deletar Produto Por ID
#   [Arguments]    ${ID_PRODUTO}
    
#     ${HEADERS}=    Create Dictionary
#     ...            Content-Type=application/json
#     ...            Authorization=Bearer ${TOKEN}

#     ${RESPONSE}=    Delete 
#     ...             url=${URL_SERVERREST}${CAMINHO_CADASTRO_PRODUTO}/${ID_PRODUTO}
#     ...             headers=${HEADERS}

#     Should Be True    ${RESPONSE.status_code} == 200 or ${RESPONSE.status_code} == 201
#     ${RESPONSE_JSON}=    To Json    ${RESPONSE.content}
#     Log    ${RESPONSE_JSON}



   



