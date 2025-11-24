*** Keywords ***
Preencher nome completo
    [Arguments]    ${nome}
    Input Text    id:name    ${nome}

Preencher email
    [Arguments]    ${email}
    Input Text    id:email    ${email}

Preencher senha de registro
    [Arguments]    ${senha}
    Input Text    id:password    ${senha}

Clicar em registrar
    Click Button    xpath=//button[contains(.,'Sign Up') or contains(.,'Registrar')]

Verificar registro realizado
    Element Should Be Visible    xpath=//div[contains(.,'Registration Successful') or contains(.,'Cadastro realizado')]