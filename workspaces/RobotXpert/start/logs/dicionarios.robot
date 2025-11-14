***Settings***
Documentation       Conhecendo os Dicionarios do Robot(Nativo no Phyton)

***Variables***
#${SIMPLES}      Fernando
#@{CARROS}       chevette    opalla  camaro  mustang
&{CARRO}     nome=chevette   hp=1500     portas=2       cor=marrom

***Test Cases***
Obtendo valores de um dicionário
    Log To Console      ${CARRO.nome}
