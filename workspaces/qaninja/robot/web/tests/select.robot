***Settings ***
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Test Cases ***
Selecionar por Texto
    Go To                           ${url}/dropdown
    Select From List By Label       class:avenger-list      Scott Lang
    ${selected}=                    Get Selected List value         class:avenger-list  
    Should Be Equal                 ${selected}                     7


Selecionar pelo valor e validar pelo texto
    Go To                           ${url}/dropdown
    Select From List By value       id=dropdown              6
    ${selected}                     Get Selected List Label         id=dropdown
    Should Be Equal                 ${selected}                     Loki
      


