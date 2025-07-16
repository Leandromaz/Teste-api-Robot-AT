*** Settings ***

Resource    ../resources/settings.robot



*** Test Cases ***
# robot -d ./Logs -i login  tests
Realizar Login
    [tags]     login
    Realizar login       realizarLogin     leandromaz1988@gmail.com      leo1234   

# robot -d ./Logs -i cadastrar_usuario  tests 
Cadastrar Usuario  
    [tags]    cadastrar_usuario  
    Cadastrar Usuario   cadastrarUsuario    Marcelo   Marcelo@gmail.com   senha1234   false