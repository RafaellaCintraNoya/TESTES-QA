***Settings***
Documentation       Trabalhando com Condicionais

***Test Cases***
Carteira de Motorista
    ${idade}=       Set Variable        18

    IF      ${idade} >= 18
        Log To Console      Você pode tirar sua CNH
    ELSE
        Log To Console      Você pode andar de bicicleta
    END

Navegador
    [Tags]      browser
    ${browser}=     Set Variable        Firefox

    IF      '${browser}'== 'Firefox'
        Log To Console      Chamando o ${browser}        
    ELSE IF  '${browser}' == 'Chorme'
        Log To Console      Chamando o Chorme
    ELSE IF  '${browser}' == 'Webkit'
        Log To Console      Chamando o Webkit
    ELSE   
        Fail      Navegador Incorreto
    END




