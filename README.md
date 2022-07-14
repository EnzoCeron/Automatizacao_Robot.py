## Programa de Bolsas Compass 
## SPRINT 5 
#
## Automação de testes com o Robot Framework

Para a realização dos testes foi utilizada a API ServeRest, juntamente com a ferramenta Robot Framework, com base na linguagem de programação Python, os testes como como Objetivo validar diversas ações dentro da API.

Em sua maioria foram feitos Seguindo o material disponibilizado pela compass, como as aulas explicativas do Demetrio. Os testes tiveram como objetivo tambem a habituação com a ferramenta Robot, que sera utilizada na Proxima Sprint.
#
## Ferramentas utilizadas

Para a rodar os teste acima foram utlizadas as seguintes ferramentas

Python -> https://www.python.org/

VsCode -> https://code.visualstudio.com/download

Robot Framework -> https://robotframework.org/

NodeJs -> https://nodejs.org/en/

ServeRest -> https://serverest.dev/
#
## Como Rodar

Por questões de estabilidade os testes estão sendo feitos no servidor local da API que pode ser Habilitado por meio do CMD, apos a instalação do node js, com o seguinte comando: 

-NPX SERVEREST

Caso opite por rodar os testes no servidor publico da API, serão nescessarias mudanças no codigo, que não são recomendadas.

Para Rodar os testes:

Abra o cmd, dentro da pasta que contem todos os arquivo

Utilize o comando:

-robot -d ./reports base.robot

Esse comando ira rodar todos os testes, alem de guardar os resultados dentro da pasta criada com o nome reports.

Caso Opite por rodar somente um teste de maneira separada basta utilizar o seguinte comando: 

-robot -d ./ reports -i >TAG< base.robot
#





