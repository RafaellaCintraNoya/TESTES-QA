*** Keywords ***
Preencher usuário
    [Arguments]    ${usuario}
    Input Text    id:email    ${usuario}

Preencher senha
    [Arguments]    ${senha}
    Input Text    id:password    ${senha}

Clicar em login
    Click Button    xpath=//button[@type='submit']

Verificar login realizado
    Element Should Be Visible    xpath=//h2[contains(.,'Dashboard')]