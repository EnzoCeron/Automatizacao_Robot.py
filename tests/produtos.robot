# Área para definir as configurações do arquivo
* Settings *
Documentation   Arquivo para Test Cases no Endpoint /produtos
Resource        ../keywords/produtos_keywords.robot

* Test Cases *

Cenário: GET Todos os Produtos 200
    [tags]      GET1.200
    Criar Sessao
    GET Endpoint /produtos
    Validar Status Code "200"

Cenário: GET Produto Específico 200
    [tags]      GET2.200
    Criar Sessao
    GET Endpoint /produtos id "BeeJh5lz3k6kSIzA"
    Validar Status Code "200"
    Validar Nome: "Logitech MX Vertical"

Cenário: GET Produto Inexistente 400
    [tags]      GET400
    Criar Sessao
    GET Endpoint /produtos id "Inexistente"
    Validar Status Code "400"
    Validar Mensagem: "Produto não encontrado"

Cenário: POST Cadastrar Novo Produto 201
    [tags]      POST201
    Criar Sessao
    Fazer Login e Armazenar Token
    Criar Dados Produto Valido
    POST Endpoint /produtos
    Validar Status Code "201"
    Validar Mensagem: "Cadastro realizado com sucesso"
    DELETE id "${response.json()["_id"]}"
    Validar Status Code "200"
    Validar Mensagem: "Registro excluído com sucesso"

Cenário: POST Cadastrar Produto Existente 400
    [tags]      POST1.400
    Criar Sessao
    Fazer Login e Armazenar Token
    Cadastra Produto Estatico Invalido
    Validar Status Code "400"
    Validar Mensagem: "Já existe produto com esse nome"

Cenário: POST Cadastrar Produto sem Nome 400
    [tags]      POST2.400
    Criar Sessao
    Fazer Login e Armazenar Token
    Cadastra Produto Estatico sem Email
    Validar Status Code "400"
    Validar Response        nome

Cenário: POST Cadastrar Produto com preco Invalido 400
    [tags]      POST3.400
    Criar Sessao
    Fazer Login e Armazenar Token
    Cadastra Produto Estatico de Preco Invalido
    Validar Status Code "400"

Cenário: POST Erro no Token 401
    [tags]      POST1.401
    Criar Sessao
    Cadastra Produto Sem Token
    Validar Status Code "401"
    Validar Mensagem: "Token de acesso ausente, inválido, expirado ou usuário do token não existe mais"

Cenário: PUT Editar Produto Existente 200
    [tags]      PUT200
    Criar Sessao
    Fazer Login e Armazenar Token
    Editar Dados Produto Valido     Logitech MX Vertical
    PUT id "BeeJh5lz3k6kSIzA"
    Validar Status Code "200"
    Validar Mensagem: "Registro alterado com sucesso"

Cenário: PUT Cadastrar Novo Produto 201
    [tags]      PUT201
    Criar Sessao
    Fazer Login e Armazenar Token
    Criar Dados Produto Valido
    POST Endpoint /produtos
    Validar Status Code "201"
    Validar Mensagem: "Cadastro realizado com sucesso"
    DELETE id "${response.json()["_id"]}"
    Validar Status Code "200"
    Validar Mensagem: "Registro excluído com sucesso"

Cenário: PUT Editar Para Nome já Existente 400
    [tags]  	PUT400
    Criar Sessao
    Fazer Login e Armazenar Token
    Edita Produto Estatico Valido    K6leHdftCeOJj8BJ
    Validar Status Code "400"
    Validar Mensagem: "Já existe produto com esse nome"

Cenário: PUT Erro no Token 401
    [tags]      PUT401
    Criar Sessao
    PUT Sem Token
    Validar Status Code "401"
    Validar Mensagem: "Token de acesso ausente, inválido, expirado ou usuário do token não existe mais"

Cenário: DELETE Excluir Produto Específico 200
    [tags]      DELETE1.200
    Criar Sessao
    Fazer Login e Armazenar Token
    Criar Dados Produto Valido
    POST Endpoint /produtos
    DELETE id "${response.json()["_id"]}"
    Validar Status Code "200"
    Validar Mensagem: "Registro excluído com sucesso"

Cenário: DELETE Excluir Produto Inexistente 200
    [tags]      DELETE2.200
    Criar Sessao
    Fazer Login e Armazenar Token
    DELETE id "0uxuPY0cbmQhpEz1"        
    Validar Status Code "200"
    Validar Mensagem: "Nenhum registro excluído"

Cenário: DELETE Excluir Produto que está no Carrinho 400
    [tags]      DELETE400
    Criar Sessao
    Fazer Login e Armazenar Token
    DELETE id "BeeJh5lz3k6kSIzA"        
    Validar Status Code "400"
    Validar Mensagem: "Não é permitido excluir produto que faz parte de carrinho"

Cenário: DELETE Erro no Token 401
    [tags]      DELETE401
    Criar Sessao
    DELETE Sem Token
    Validar Status Code "401"
    Validar Mensagem: "Token de acesso ausente, inválido, expirado ou usuário do token não existe mais"

Cenário: DELETE Acesso Apenas ao Administrador 403
    [tags]      DELETE403
    Criar Sessao
    Fazer Login Sem Admnistrador e Armazenar Token
    DELETE id "0uxuPY0cbmQhpEz1"
    Validar Status Code "403"
    Validar Mensagem: "Rota exclusiva para administradores"

Cenário: Listar Estoque total
    Listar estoque total
