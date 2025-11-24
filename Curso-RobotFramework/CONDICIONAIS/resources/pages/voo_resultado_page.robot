*** Keywords ***
Verificar resultados de voo exibidos
    Element Should Be Visible    xpath=//h2[contains(.,'Flights')]
    Element Should Be Visible    xpath=//div[contains(@class,'flight-list')]

Selecionar primeiro voo disponível
    Click Element    xpath=(//button[contains(.,'Book Now') or contains(.,'Selecionar')])[1]

Verificar detalhes do voo selecionado
    Element Should Be Visible    xpath=//div[contains(@class,'flight-details')]