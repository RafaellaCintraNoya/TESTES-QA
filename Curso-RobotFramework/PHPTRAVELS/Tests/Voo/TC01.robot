*** Settings ***
Resource         ../../Steps/Main_Steps.robot
Test Setup       Fazer Login
Test Teardown    Fechar Navegador

*** Variables ***
${CidadeOrigem}    Los Angeles EUA
 

*** Test Cases ***
TC01 - Reservando passagem de destinos dentro dos EUA na classe econômica
    Quando eu realizo uma busca de um vôo ida e volta
    Quando informo que está saindo de ${CidadeOrigem}
    #E indo para 
    #E saindo na data
    #E voltando na data
    #Quando eu clico em buscar
    #E seleciono o primeiro vôo
    #E preencho os dados do passageiro
    #E preencho os dados de pagamento
    #E clico em confirmar
    #Então a página de confirmação de viagem é exibida
   