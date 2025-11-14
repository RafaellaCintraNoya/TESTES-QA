***Settings***
Documentation    Laços de repetição (Loops)

***Variables***
@{AVENGERS}     Hulk    Thor    Ironman     Cap
@{JUSTICE}      Superman    Wonder Woman    Batman      Arrow

***Test Cases***
Meu Primeiro Loop

    FOR        ${item}      IN      @{AVENGERS} 
        IF     $item == 'Spiderman
            Log To Console      Obtendo o vingador: ${item}
        END
    END 

Outro Loop
    [Tags]      thor
    FOR        ${item}      IN      @{AVENGERS} 
        Exit For Loop If    $item == 'Thor'
        Log To Console      Obtendo o vingador: ${item}
        END
    END 



