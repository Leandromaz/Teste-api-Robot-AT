*** Settings ***

Resource    ../resources/settings.robot

*** Test Cases ***
# robot -d ./Logs -i login  tests
Realizar Login
    [tags]     login
    Realizar login       realizarLogin     leandroteste@gmail.com       teste123   

# robot -d ./Logs -i cadastrar_usuario  tests 
Cadastrar Usuario  
    [tags]    cadastrar_usuario  
    Cadastrar Usuario  cadastrarUsuario    Leonardo      leandroqa1@gmail.com       teste123     true

 # robot -d ./Logs -i cadastrar_produto  tests   
Cadastrar Produtos
    [Tags]    cadastrar_produto
    Cadastrar Produtos    cadastrarProduto    play Station 2    1600    play Station    200
   

# robot -d ./Logs -i alterar_produto  tests 
Alterar Produto
    [Tags]    alterar_produto
    Alterar Produto     cadastrarProduto   MHGyYQ1t2O5DrR5m     mouse    300    Redragon    400    
 
# robot -d ./Logs -i buscar_produto_id  tests    
Buscar produto por ID
    [Tags]    buscar_produto_id
    Buscar produto por ID    MHGyYQ1t2O5DrR5m


 # robot -d ./Logs -i buscar_produto_nome tests       
Buscar produto por nome
   [Tags]    buscar_produto_nome
   Buscar produto por nome       mouse
   Buscar produto por nome       Rustic Wooden Chicken 

# robot -d ./Logs -i  deleta_produto tests    
Deleta produto por ID
    [Tags]  deleta_produto
    Deleta produto por ID    MHGyYQ1t2O5DrR5m