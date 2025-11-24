*** Keywords ***
Preencher origem do voo
    [Arguments]    ${origem}
    Input Text    id:flight-origin    ${origem}

Preencher destino do voo
    [Arguments]    ${destino}
    Input Text    id:flight-destination    ${destino}

Selecionar data de ida
    [Arguments]    ${data_ida}
    Input Text    id:departure-date    ${data_ida}

Selecionar data de volta
    [Arguments]    ${data_volta}
    Input Text    id:return-date    ${data_volta}

Pesquisar voos
    Click Button    xpath=//button[contains(.,'Search') or contains(.,'Pesquisar')]

Verificar resultados de voos
    Element Should Be Visible    xpath=//div[contains(@class,'flight-list')]