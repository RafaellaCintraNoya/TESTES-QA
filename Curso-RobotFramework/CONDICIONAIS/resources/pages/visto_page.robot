*** Keywords ***
Preencher nome do solicitante
    [Arguments]    ${nome}
    Input Text    id:applicant-name    ${nome}

Preencher número do passaporte
    [Arguments]    ${passaporte}
    Input Text    id:passport-number    ${passaporte}

Selecionar país de destino
    [Arguments]    ${pais}
    Select From List By Label    id:destination-country    ${pais}

Enviar solicitação de visto
    Click Button    xpath=//button[contains(.,'Solicitar Visto') or contains(.,'Apply for Visa')]

Verificar solicitação enviada
    Element Should Be Visible    xpath=//div[contains(.,'Solicitação enviada') or contains(.,'Application Submitted')]