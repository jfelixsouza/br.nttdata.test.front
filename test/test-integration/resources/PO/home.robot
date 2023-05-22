*** Settings ***

Library   Selenium2Library
Resource    ../Resource.robot


*** Variables ***


*** Keywords ***



### AÇÃO ###

DADO que cenario 1 foi executado com sucesso
    Title Should Be    Global IT Services Provider & Consultant | NTT DATA
    Capture Page Screenshot

DADO que o cenario 2 foi executados com sucesso  
    
    Switch Window    title=Jobs    browser=CURRENT
    Sleep    4s
    Title Should Be    Jobs
    Capture Page Screenshot 

QUANDO clico no menu Carreira
    Click Element   //a[contains(.,'Careers')]
    Capture Page Screenshot

E Job Opportunities
    Click Element    //a[contains(.,'Job opportunities')]
    

QUANDO insiro uma profissao no campo pesquisar
    [Arguments]        ${PROFISSAO_DESEJADA}
    Input Text    sGlobal    ${PROFISSAO_DESEJADA}
    Capture Page Screenshot
    Press Keys    sGlobal    ENTER  


### VALIDACOES ###

ENTAO validamos que fomos direcionado para pagina das vagas disponiveis
   Capture Page Screenshot

 

ENTAO acesso a pagina com listagem das vagas disponiveis
    Capture Page Screenshot


### FINALIZAR ###

# Test Teardown    
#     Fechar navegador
