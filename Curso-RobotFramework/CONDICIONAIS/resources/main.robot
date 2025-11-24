*** Settings ***
Library    SeleniumLibrary
Resource   ./data/geral.robot
Resource   ./pages/login_page.robot

*** Keywords ***
Acessar site e logar com o perfil Admin
    Open Browser    ${geral.Admin_URL}    ${geral.Browser}
    Maximize Browser Window
    Sleep    3s
    Preencher usuário    ${geral.Admin_User}
    Preencher senha      ${geral.Admin_Password}
    Clicar em login    Preencher usuário
        [Arguments]    ${usuario}
        Input Text    name=email    ${usuario}
    
    Preencher senha
        [Arguments]    ${senha}
        Input Text    name=password    ${senha}
    
    Clicar em login
        Click Button    xpath=//button[@type='submit']
    
    Verificar login realizado
        Wait Until Element Is Visible    xpath=//h2[contains(.,'Dashboard')]    10s        Preencher usuário
            [Arguments]    ${usuario}
            Input Text    name=email    ${usuario}
        
        Preencher senha
            [Arguments]    ${senha}
            Input Text    name=password    ${senha}
        
        Clicar em login
            Click Button    xpath=//button[@type='submit']
        
        Verificar login realizado
            Wait Until Element Is Visible    xpath=//h2[contains(.,'Dashboard')]    10s
    Verificar login realizado

Fechar navegador
    Close Browser

E informo o país de origem como "${pais}"
    Log    País informado: ${pais}