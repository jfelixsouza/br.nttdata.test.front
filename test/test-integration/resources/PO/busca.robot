*** Settings ***

Library    Selenium2Library
Resource    ../Resource.robot



*** Variables ***

${HOME_URL}    https://www.google.com.br
${HOME_PESQUISA}    q


*** Keywords ***

### AÇÃO ###

DADO que acesso o site do Google
    Go To    ${HOME_URL}
    Capture Page Screenshot

QUANDO digito a palavra NTTDATA na barra de pesquisa
    Input Text    ${HOME_PESQUISA}    nttdata
    Capture Page Screenshot
    Press Keys    ${HOME_PESQUISA}    ENTER
    Capture Page Screenshot
    

E clico no resultado da pesquisa
    Click Element    //h3[@class='LC20lb MBeuO DKV0Md'][contains(.,'NTT DATA: Global IT Services Provider & Consultant')]



### VALIDACOES ###


ENTAO validamos que fui direcionado para a pagina da NTTDATA
    Title Should Be    Global IT Services Provider & Consultant | NTT DATA
    Capture Page Screenshot