*** Settings ***
Library    Browser
Suite Setup    Open Browser Session
Suite Teardown    Close Browser Session
Test Teardown   Take Screenshot On Failure

*** Variables ***
${URL}    http://parodifood.qaninja.academy/
${TIMEOUT}    15s

*** Test Cases ***
Deve buscar um único restaurante
    Go To Restaurants
    Search By    Debuger
    Restaurant Should Be Visible    DEBUGER KING
    Restaurant Count Should Be      1

Deve buscar por categoria
    Go To Restaurants
    Search By    Cafe
    Restaurant Should Be Visible    STARBUGS COFFEE

Deve buscar todos os restaurantes
    Go To Restaurants
    Search By    a
    Restaurant Count Should Be      10

*** Keywords ***
Open Browser Session
    [Documentation]    Abre o navegador e verifica a página inicial
    New Browser    chromium    headless=False
    New Page       ${URL}
    ${text}=      Get Text    css=span
    Should Contain    ${text}    Nunca foi tão engraçado pedir comida

Close Browser Session
    [Documentation]    Fecha o navegador no final da suíte
    Close Browser

Go To Restaurants
    [Documentation]    Clica em 'Estou com fome!' e verifica o cabeçalho
    Click         text=Estou com fome!
    ${header}=    Get Text    css=h1 strong
    Should Contain    ${header}    Ta na hora de matar a fome

Search By
    [Arguments]    ${value}
    [Documentation]    Realiza uma busca pelo valor informado
    Click         css=.search-link
    Fill Text     css=input[formcontrolname="searchControl"]    ${value}

Restaurant Should Be Visible
    [Arguments]    ${name}
    [Documentation]    Verifica se o restaurante está visível
    Wait For Elements State    css=div.place-info-box[style*="opacity: 1;"]    visible    ${TIMEOUT}
    ${text}=    Get Text    css=.place-info-box
    Should Contain    ${text}    ${name}

Restaurant Count Should Be
    [Arguments]    ${qtd}
    [Documentation]    Verifica se a quantidade de restaurantes encontrados é a esperada
    Wait For Elements State    css=.place-info-box    visible    ${TIMEOUT}
    ${count}=    Get Elements Count    css=.place-info-box
    Should Be Equal As Integers    ${count}    ${qtd}

Take Screenshot On Failure
    [Arguments]    ${test_status}    ${test_name}
    Run Keyword If    '${test_status}' == 'FAIL'    Capture Page Screenshot
