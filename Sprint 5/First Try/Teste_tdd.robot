* Test Cases *
Cenario: GET todos os usuarios 200
    GET Endpoint /usuarios
    Validar Status code "200"

Cenario: GET usuario especifico
    GET Endepoint /usuario com id "0uxuPY0cbmQhpEz1"
    Validar o usuario com id "0uxuPY0cbmQhpEz1"
    Validar Status code "200"
    Validar Mensagem "nome = Fulano da Silva"

Cenario: POST Criar novo usuario 201
    Criar usuario Dinamico
    POST usuario Dinamico no Endepoint /usuarios
    Validar Status code "201"
    Validar Mensagem "Cadastro realizado com sucesso"

Cenario: PUT Editar usuario Existente 200
    PUT Editar usuario com id "0uxuPY0cbmQhpEz1" usando os dados dinamicos
    Validar Status code "200"
    Validar Mensagem "Registro realizado com sucesso"

Cenario: DELETE usuario Existente 200
    DELETE usuario especifico com id "0uxuPY0cbmQhpEz1"
    Validar Status code "200"
    Validar Mensagem "Registro excluido com sucesso | nenhum Registro excluido"
    
