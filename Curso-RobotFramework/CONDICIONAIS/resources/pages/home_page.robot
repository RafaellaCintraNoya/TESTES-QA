*** Keywords ***
Verificar página inicial carregada
    Element Should Be Visible    xpath=//h2[contains(.,'Dashboard')]

Clicar em menu voos
    Click Element    xpath=//a[contains(.,'Flights') or contains(.,'Voos')]

Verificar usuário logado
    Element Should Be Visible    xpath=//span[contain    Acessar site e logar com o perfil Admin
        Open Browser    ${geral.Admin_URL}    ${geral.Browser}
        Maximize Browser Window
        Wait Until Element Is Visible    id:email    10s
        Preencher usuário    ${geral.Admin_User}
        Preencher senha      ${geral.Admin_Password}
        Clicar em login
        Verificar login realizado        ...    Admin_URL=https://app.phptravels.com/logins(@class,'user-name')]