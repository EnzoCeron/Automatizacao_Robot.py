* Settings *
Documentation   Arquivo simples para requisicoes em http em APIs
Library         RequestsLibrary
Resource        ./usuarios_keywords.robot
Resource        ./login_keywords.robot
Resource        ./carrinho_keywords.robot
Resource        ./produtos_keywords.robot
Resource        ./common.robot

* Test Cases *
Cenario: GET Todos os Usuarios 200
    [Tags]      GET
    Criar Sessao    
    GET Endpoint /usuarios 
    Validar Status code "200"   
    #Validar Quantidade "${2}"
    Printar Conteudo Response

Cenario: POST Cadastrar usuario 201
    [Tags]      POST
    Criar Sessao
    Post Endpoint /usuarios
    Validar Status code "201"
    Validar Se Mensagem contem "sucesso"

Cenario: PUT Editar Usuario 200
    [Tags]      PUT
    criar Sessao
    PUT Endpoint /usuarios
    Validar Status Code "200"

Cenario: DELETE Deletar Usuario 200
    [Tags]      DELETE
    Criar Sessao
    DELETE Endpoint /usuarios
    Validar Status Code "200" 

Cenario: POST Realizar Login 200
    [Tags]      POSTLOGIN
    Criar Sessao
    Post Endpoint /login
    Validar Status Code "200"

Cenario: POST Criar Produto 201
    [Tags]      POSTPRODUTO
    Criar Sessao
    Fazer Login e Armazenar Token
    Post Endpoint /produtos
    Validar Status Code "201"

Cenario: DELETE Excluir Produto 200
    [Tags]      DELETEPRODUTPO
    Criar Sessao
    Fazer Login e Armazenar Token
    Criar um Produto e Armazenar o id
    DELETE Endepoint /produtos
    Validar Status Code "200"
    
Cenario: POST Criar Usuario de Massa Estatica 201
    [Tags]      POSTESTATICO
    Criar Sessao
    Criar Usuario Estatico Valido
    Validar Status Code "200"

* Keywords *

Criar Sessao
    Create Session          Serverest          http://localhost:3000
