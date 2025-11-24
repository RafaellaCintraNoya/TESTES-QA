*** Settings***
Resource  ../Main.robot

*** Keywords ***

Acessar o site e logar com o perfil ${perfil}
    IF    "${perfil}"=="Admin"
            Open Browser ${geral.Admin_URL}  ${geral.Browser}
            Maximize Browser Window
            Wait Until Element Is Visible  ${Login.Input_EmailLogin}  10
            Input Text                     ${Login.Input_EmailLogin}  ${geral.Admin_User}
            Wait Until Element Is Visible  ${Login.Input_SenhaLogin}  10
            Input Text                     ${Login.Input_SenhaLogin}  ${geral.Admin_Password}
            Run Keyword And Ignore Error   Wait Until Element Is Visible  ${registro.Button_Cookie}     5
            Run Keyword And Ignore Error   Click Element                  ${registro.Button_Cookie}
            Wait Until Element Is Visible  ${Login.Button_Logar}      10
            Click Element                  ${Login.Button_Logar}
    ELSE IF    "${perfil}"=="Cliente"
            Open Browser ${geral.Cliente_URL}  ${geral.Browser}
            Maximize Browser Window
            Wait Until Element Is Visible  ${Login.Input_EmailLogin}  10
            Input Text                     ${Login.Input_EmailLogin}  ${geral.Cliente_User}
            Wait Until Element Is Visible  ${Login.Input_SenhaLogin}  10
            Input Text                     ${Login.Input_SenhaLogin}  ${geral.Cliente_Password}
            Run Keyword And Ignore Error   Wait Until Element Is Visible  ${registro.Button_Cookie}     5
            Run Keyword And Ignore Error   Click Element                  ${registro.Button_Cookie}
            Wait Until Element Is Visible  ${Login.Button_Logar}      10
            Click Element                  ${Login.Button_Logar}
        
    END    
  
Acessar o site e logar
    Dado que eu acesse o php travels
    E realize o cadastro
    E faça o Login

Fechar Navegador
    Close Browser 