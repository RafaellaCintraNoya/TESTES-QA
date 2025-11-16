*** Settings***
Resource  ../Main.robot

*** Keywords ***

Acessar o site e logar com o perfil ${perfil}
    IF    "${perfil}"=="Admin"
            Wait Until Element Is Visible  ${Login.A_OpcaoLogin}      10
            Click Element                  ${Login.A_OpcaoLogin} 
            Wait Until Element Is Visible  ${Login.Input_EmailLogin}  10
            Input Text                     ${Login.Input_EmailLogin}  ${dados_registro.Email}
            Wait Until Element Is Visible  ${Login.Input_SenhaLogin}  10
            Input Text                     ${Login.Input_SenhaLogin}  ${dados_registro.Senha}
            Run Keyword And Ignore Error   Wait Until Element Is Visible  ${registro.Button_Cookie}     5
            Run Keyword And Ignore Error   Click Element                  ${registro.Button_Cookie}
            Wait Until Element Is Visible  ${Login.Button_Logar}      10
            Click Element                  ${Login.Button_Logar}
    ELSE
        
    END    
  
Acessar o site e logar
    Dado que eu acesse o php travels
    E realize o cadastro
    E faça o Login

Fechar Navegador
    Close Browser 