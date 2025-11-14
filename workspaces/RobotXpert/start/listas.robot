***Settings***
Documentation       Conhecendo as Listas

Library             Collections

***Variables***
@{AVENGERS}     Ironman     Hulk        Thor    Cap
@{JUSTICE}      Superman    Wonder Woman    Batman      Arrow 

***Test Cases***
Minha Lista

    ${index}        Get Index From Lista        ${AVENGERS}     Ironman

    Log To Console      ${AVENGERS}[3]
    Set List Value      ${AVENGERS}     ${index}        Homem de Ferro

    ${index_thor}       Get Index From List         ${AVENGERS}     Thor

    Remove From List    ${AVENGERS}         ${index_thor}

    Log To Console      ${AVENGERS}

    ${CROSSOVER}    Combine Listas      ${AVENGERS}     ${JUSTICE}

    Log To Console      ${CROSSOVER}

