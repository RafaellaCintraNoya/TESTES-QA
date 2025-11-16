*** Settings ***
Library    SeleniumLibrary


*** Variables ***
#Dados do Teste
${NomeDaMusica}    Ariana Grande Positions

#Variáveis de configuração
${URL}            https://www.youtube.com/
${Browser}        chrome

#Elementos
${Input_Pesquisa}     //*[@id="center"]/yt-searchbox/div[1]/form/input
${Button_Pesquisa}    //*[@id="center"]/yt-searchbox/button
${Primeiro}           (//*[@id="video-title"]/yt-formatted-string)[1]
${Provas}             (//button[.//div[normalize-space()='Compartilhar']])[1]



*** Keywords ***
Dado que eu acesso o site do youtube
    Open Browser    ${URL}    ${Browser}
Quando digito o nome da música
    Input Text   ${Input_Pesquisa}    ${NomeDaMusica}
E clico no botão buscar
    Click Element    ${Button_Pesquisa}
E clico na primeira opção da lista
    Wait Until Element Is Visible    ${Primeiro}
    Click Element    ${Primeiro}
Então o vídeo é executado
    Scroll Element Into View         ${Provas}
    Wait Until Element Is Visible    ${Provas}    20s
    Wait Until Element Is Enabled    ${Provas}    20s
    Click Element                    ${Provas}
    Sleep    1s
    Close Browser



*** Test Cases ***
Cenário 1: Executar Vídeo no site do youtube
    [Tags]    regressivo
    Dado que eu acesso o site do youtube
    Quando digito o nome da música
    E clico no botão buscar
    E clico na primeira opção da lista
    Então o vídeo é executado


