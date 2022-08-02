# Área para definir as configurações do arquivo
* Settings *
Documentation   Arquivo para as Keywords do Endpoint /usuarios
Resource        ../support/base.robot

#Área para desenvolver as keywords utilizadas nos casos de teste
* Keywords *

GET Endpoint /usuarios
    ${response}                     GET On Session     serverest       /usuarios
    Printar Conteudo Response       ${response}
    Set Global Variable             ${response}

GET Endpoint /usuarios id "${id}"
    ${response}                     GET On Session     serverest       /usuarios/${id}      expected_status=anything
    Printar Conteudo Response       ${response}
    Set Global Variable             ${response}

POST Endpoint /usuarios
    ${response}                 POST On Session             serverest       /usuarios       json=&{payload}     expected_status=anything
    Printar Conteudo Response   ${response}
    Set Global Variable         ${response}

Criar Usuario Estatico Valido
    ${json}                     Importar JSON Estatico      json_usuarios_ex.json
    ${payload}                  Set Variable                ${json["usuario_valido"]}
    Set Global Variable         ${payload}
    POST Endpoint /usuarios

Criar Usuario Estatico sem Email
    ${json}                     Importar JSON Estatico      json_usuarios_ex.json
    ${payload}                  Set Variable                ${json["usuario_sem_email"]}
    Set Global Variable         ${payload}
    POST Endpoint /usuarios

Criar Usuario Estatico sem Senha
    ${json}                     Importar JSON Estatico      json_usuarios_ex.json
    ${payload}                  Set Variable                ${json["usuario_sem_senha"]}
    Set Global Variable         ${payload}
    POST Endpoint /usuarios

Criar Usuario Estatico Invalido
    ${json}                     Importar JSON Estatico      json_usuarios_ex.json
    ${payload}                  Set Variable                ${json["usuario_invalido"]}
    Set Global Variable         ${payload}
    POST Endpoint /usuarios

Editar Usuario Valido
    ${json}                     Importar JSON Estatico      json_usuarios_ex.json
    ${payload}                  Set Variable                ${json["usuario_editado"]}
    Set Global Variable         ${payload}
    PUT Editar id "susXVV8VDdM3MOhW"

Criar Usuario Valido
    ${json}                     Importar JSON Estatico      json_usuarios_ex.json
    ${payload}                  Set Variable                ${json["usuario_valido"]}
    Set Global Variable         ${payload}
    PUT Criar Usuário
    
Editar com Email Existente
    ${json}                     Importar JSON Estatico      json_usuarios_ex.json
    ${payload}                  Set Variable                ${json["usuario_invalido"]}
    Set Global Variable         ${payload}
    PUT Editar com Email Existente

PUT Editar id "${id}"
    ${response}                 PUT On Session     serverest      /usuarios/${id}       json=&{payload}    expected_status=anything
    Printar Conteudo Response   ${response}
    Set Global Variable         ${response}

PUT Criar Usuário
    ${response}                 PUT On Session     serverest      /usuarios/Xf1V1gmD8OrygZAT       json=&{payload}     expected_status=anything
    Printar Conteudo Response   ${response}
    Set Global Variable         ${response}

PUT Editar com Email Existente
    ${response}                 PUT On Session     serverest      /usuarios/CNR4yVgA8tQfkvqv       json=&{payload}      expected_status=anything
    Printar Conteudo Response   ${response}
    Set Global Variable         ${response}

DELETE Usuario id "${id}"
    ${response}                 DELETE On Session     serverest       /usuarios/${id}      expected_status=anything
    Printar Conteudo Response   ${response}
    Set Global Variable         ${response}

Listar todos os ids
<<<<<<< HEAD
    ${1}    listaids
    Log To Console          ${1}

Usuario com carrinho
    ${2}    usuariocomcarrinho
    Log To Console          ${2}
=======
    ${1}    listarids
    Log To Console          ${1}

Buscar id com carrinho
    ${oi}   usuariocomcarrinho
    Log To Console          ${oi}

>>>>>>> DEVELOP
