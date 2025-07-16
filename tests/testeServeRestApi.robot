*** Settings ***

Resource    ../resources/settings.robot



*** Test Cases ***
Realizar Login
    [tags]     login
    Conectar na api serverest
    Realizar login    leandromaz1988@gmail.com    leo123
    

Cadastrar Usuario  
    [tags]    cadastrar_usuario
    Conectar na api serverest    
    Cadastrar Usuario    Mario Silva    mario@gmail.com   senha123   true