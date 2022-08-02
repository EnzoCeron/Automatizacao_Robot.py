* Settings *
Documentation       Arquivo de base para o projeto
Library             RequestsLibrary
Library             OperatingSystem
Library             Livraria.py
Resource            ./common/common.robot
Resource            ./fixtures/dynamics.robot
Resource            ./variaveis/serverest_variaveis.robot


* Keywords *

Criar Sessao
    Create Session          serverest       ${BASE_URI}

Limpar Base de Dados
    cleanhost