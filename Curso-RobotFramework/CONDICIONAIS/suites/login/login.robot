*** Settings ***
Resource         ../../Resources/Main.robot
Test Setup       Acessar site e logar com o perfil Admin
Test Teardown    Fechar navegador

*** Test Cases ***
TC - DUMY
    E informo o país de origem como "Brasil"