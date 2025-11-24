*** Keywords ***
Preencher dados do passageiro
    [Arguments]    ${nome}    ${sobrenome}    ${email}
    Input Text    id:passenger-first-name    ${nome}
    Input Text    id:passenger-last-name     ${sobrenome}
    Input Text    id:passenger-email         ${email}

Selecionar assento
    [Arguments]    ${assento}
    Click Element    xpath=//button[contains(.,'${assento}')]

Confirmar reserva
    Click Button    xpath=//button[contains(.,'Confirm Booking') or contains(.,'Confirmar Reserva')]

Verificar reserva concluída
    Element Should Be Visible    xpath=//div[contains(.,'Booking Confirmed') or contains(.,'Reserva confirmada')]