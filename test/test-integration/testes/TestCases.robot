*** Settings ***
Documentation    Teste NTTDATA
Resource    ../resources/PO/home.robot
Resource    ../resources/Resource.robot
Resource    ../resources/PO/busca.robot




*** Test Cases ***

Test Setup
    Abrir navegador

Cenario 1 - Validar barra de pesquisa do Google
    [Documentation]    Teste para validar barra de pesquisa do Google
    [Tags]             
    DADO que acesso o site do Google
    QUANDO digito a palavra NTTDATA na barra de pesquisa
    E clico no resultado da pesquisa
    ENTAO validamos que fui direcionado para a pagina da NTTDATA


Cenario 2 - Validar fluxo acesso a pagina para pesquisa de vagas disponiveis
    [Documentation]    Teste para validar fluxo para visualizar vagas disponiveis
    [Tags]       
    DADO que cenario 1 foi executado com sucesso
    QUANDO clico no menu Carreira
    E Job Opportunities
    ENTAO validamos que fomos direcionado para pagina das vagas disponiveis


Cenario 3 - Validar página da listagem de vagas
    [Documentation]    Teste para validar pagina de listagem de vagas
    [Tags]       
    DADO que o cenario 2 foi executados com sucesso    
    QUANDO insiro uma profissao no campo pesquisar    Arquiteto
    ENTAO acesso a pagina com listagem das vagas disponiveis
