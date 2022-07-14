* Settings *
Documentation   Keywords e variaveis para acoes do endpoint /usuarios

* Variables *

    

* Keywords *

GET Endpoint /usuarios
    ${response}             GET On Session          Serverest           /usuarios
    Set Global Variable     ${response}

POST Endpoint /Usuarios
    &{payload}              Create Dictionary       nome=toninho     email=toninhos@outlook.com     password=sadass   administrador=true
    ${response}             POST On Session     Serverest           /usuarios       data=&{payload}
    Log to Console          response ${response.content}
    Set Global Variable     ${response}

PUT Endpoint /usuarios
    &{payload}              Create Dictionary        nome=jevsosdasadn priecst      email=tedfvhdjahdfkasjf@gmail.com      password=sadasfbsafclear    administrador=true
    ${response}             PUT On Session          Serverest     /usuarios/A92dDMW3HfQiyEQg    data=&{payload}
    Log to Console          response ${response.content}         
    Set Global Variable     ${response}

DELETE Endpoint /usuarios
    ${response}             DELETE On Session          Serverest     /usuarios/A92dDMW3HfQiyEQg    
    Log to console          response ${response.content}
    Set Global Variable     ${response}

Validar Quantidade "${quantidade}"
    Should Be Equal         ${response.json()["quantidade"]}    1

Validar Se Mensagem contem "${palavra}"
    Should Contain          ${response.json()["message"]}  ${palavra}  

Printar Conteudo Response
    Log to Console          Response: ${response.json()}   

Criar Usuario Estatico Valido
    ${json}                 Importar JSON Estatico     json_usuario_ex.json
    ${payload}              Set Variable               ${json["user_valido"]}
    Set Global Variable     ${payload}
    
