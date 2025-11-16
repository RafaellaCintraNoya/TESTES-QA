*** Settings ***
Library    Browser
Library    keywords.py
Suite Setup    Open Browser Session
Suite Teardown    Close Browser Session

*** Test Cases ***
Deve buscar um único restaurante
    Go To Restaurants
    Search By    Debuger
    Restaurant Should Be Visible    DEBUGER KING
    Restaurant Count Should Be      1
    Take Screenshot

Deve buscar por categoria
    Go To Restaurants
    Search By    Cafe
    Restaurant Should Be Visible    STARBUGS COFFEE
    Take Screenshot

Deve buscar todos os restaurantes
    Go To Restaurants
    Search By    a
    Restaurant Count Should Be      10
    Take Screenshot
