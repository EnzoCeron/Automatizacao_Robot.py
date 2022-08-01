# Programa de Bolsas Compass
# SPRINT 6 - Projeto Final
Automação de testes com o Robot Framework

Para a realização dos testes foi utilizada a API ServeRest, juntamente com a ferramenta Robot Framework, com base na linguagem de programação Python, os testes como como Objetivo validar diversas ações dentro da API.

O Material tem por obejtivo o mapeamento da API ServeRest, que permite o estudo de:

Verbos GET, POST, PUT e DELETE com persistência de dados


# Ferramentas utilizadas
Para a rodar os teste acima foram utlizadas as seguintes ferramentas

Python -> https://www.python.org/

VsCode -> https://code.visualstudio.com/download

Robot Framework -> https://robotframework.org/

NodeJs -> https://nodejs.org/en/

ServeRest -> https://serverest.dev/

[![Badge ServeRest](https://img.shields.io/badge/API-ServeRest-green)](https://github.com/ServeRest/ServeRest/)

# Como Rodar
Por questões de estabilidade os testes estão sendo feitos no servidor local da API que pode ser Habilitado por meio do CMD, apos a instalação do node js, com o seguinte comando:

-NPX SERVEREST

Caso opite por rodar os testes no servidor publico da API, serão nescessarias mudanças no codigo, que não são recomendadas.

Para Rodar os testes:

Abra o cmd, dentro da pasta que contem todos os arquivo

Utilize o comando:

-robot -d ./reports "nome_do_arquivo".robot

Esse comando ira rodar todos os testes, alem de guardar os resultados dentro da pasta criada com o nome reports.

Caso Opite por rodar somente um teste de maneira separada basta utilizar o seguinte comando:

-robot -d ./ reports -i >TAG< "nome_do_arquivo".robot

# Como baixar o repositorio para a sua maquina
Para fazer isto basta utilizar a funcionalidade clone do git Sempre que você entrar em um repositório, seja o seu ou o de qualquer outra pessoa, terá esse botão Code, que quando você clica aparece um link Você irá copiar esse link e levar ele lá pro nosso terminal

O comando para puxar o projeto para a sua máquina é o git clone 'Link'

Não é necessário criar um repositório antes disso, basta abrir o terminal e clonar o projeto e tudo aparecerá!

# Creditos e Agradecimentos 

Paula Beatriz -

Emily -

Mathues Locatelli - 

