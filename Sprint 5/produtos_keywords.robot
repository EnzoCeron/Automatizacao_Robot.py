* Settings *
Documentation   Keywords e variaveis para acoes do endpoint /produtos

* Keywords *
POST Endpoint /produtos
    &{header}               Create Dictionary       Authorization=${token_auth}
    &{payload}              Create Dictionary       nome=MouseTech      preco=400   descricao=Mouse    quantidade=100
    ${response}             POST On Session     Serverest           /produtos       data=&{payload}    headers=&{header}
    Log to Console          response ${response.content}
    Set Global Variable     ${response}

DELETE Endepoint /produtos
    &{header}               Create Dictionary       Authorization=${token_auth}
    ${response}             POST On Session     Serverest           /produtos/${id_produto}          headers=&{header}
    Log to Console          response ${response.content}
    Set Global Variable     ${response}

Validar Ter Criado o Produto
    Should be Equal        ${response.json()["message"]}    Cadastro Realizado com Sucesso
    Should Not be Empty    ${response.json()["_id"]}

Criar um Produto e Armazenar o id
    POST Endpoint /produtos
    Validar Ter Criado o Produto
    ${id_produto}           Set Variable            ${response.json()["_id"]}
    Log to Console          id do produto: ${id_produto}
    Set Global Variable     ${id_produto}