* Settings *
Documentation   Keywords e variaveis para acoes do endpoint /carrinho

* Variables *
${produtos}     Create List   BeeJh5lz3k6kSIzA     1  

* Keywords *

GET Endpoint /carrinhos
    ${response}             GET On Session          Serverest           /carrinhos
    Set Global Variable     ${response}

POST Endpoint /carrinhos
    &{header}               Create Dictionary       Authorization=${token_auth}
    ${json}                 Importar JSON Estatico     json_carrinhos.json
    ${payload}              Set Variable               ${json["produtos"]}
    Set Global Variable     ${payload}
    ${response}             POST On Session     Serverest           /carrinhos       data=${payload}    headers=&{header}
    Log to Console          response ${response.content}
    Set Global Variable     ${response}

DELETE Endpoint /carrinhos/concluir-compra
    &{header}               Create Dictionary       Authorization=${token_auth}
    ${response}             DELETE On Session     Serverest           /carrinhos/concluir-compra    headers=&{header}
    Log to Console          response ${response.content}
    Set Global Variable     ${response}

DELETE Endpoint /carrinhos/cancelar-compra
    &{header}               Create Dictionary       Authorization=${token_auth}
    ${response}             DELETE On Session     Serverest           /carrinhos/cancelar-compra    headers=&{header}
    Log to Console          response ${response.content}
    Set Global Variable     ${response}
