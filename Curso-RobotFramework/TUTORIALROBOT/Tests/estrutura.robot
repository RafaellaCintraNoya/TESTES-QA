Acessar sites
** Settings **
Library  SeleniumLibrary

** Variables **


** Keywords **
Abrir site do google
    Open Browser   https://www.google.com/   chrome

Fechar navegador
    Close Browser    

Abrir site da globo
    Open Browser     https://www.globo.com/    chrome  


** Test Cases **
Cenário 1: Teste de abrir site google
    [Tags]    regressivo
    Abrir site do google
    Fechar navegador

Cenário 2: Teste de abrir site globo
    Abrir site da globo
    Fechar navegador

        
   