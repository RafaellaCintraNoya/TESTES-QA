***Settings***
Documentation    Testes da página login do parodify
Library          Browser
Test Teardown    Take Screenshot

*** Variables ***
${PAGINA}        https://parodify.herokuapp.com/users/sign_in
${BROWSER}       chromium
${EMAIL}         papito@parodify.com
${SENHA_BOA}     pwd123
${SENHA_RUIM}    123456
${MENSAGEM_ERRO}    Opps! Dados de acesso incorretos!
${EMAIL_ERRO}    rafaella@parodify.com
${MENSAGEM_ERRO_2}  Opps! Dados de acesso incorretos!

***Test Cases***

Login com sucesso

    Open Browser    ${PAGINA}              ${BROWSER}
    Fill Text       id=user_email          ${EMAIL}
    Fill Text       id=user_password       ${SENHA_BOA}
    Click           css=input[value="Log in"]
    Wait For Elements State     css=a[href$=sign_out]       visible	 5
    
Login com senha incorreta

    Open Browser    ${PAGINA}              ${BROWSER}
    Fill Text       id=user_email          ${EMAIL}
    Fill Text       id=user_password       ${SENHA_RUIM}
    Click           css=input[value="Log in"]
    Get Text        css=.is-danger .message-body    should be       ${MENSAGEM_ERRO}    5
    
Login com e-mail incorreto

    Open Browser    ${PAGINA}              ${BROWSER}
    Fill Text       id=user_email          ${EMAIL_ERRO}
    Fill Text       id=user_password       ${SENHA_BOA}
    Click           css=input[value="Log in"]
    Get Text        css=.is-danger .message-body    should be       ${MENSAGEM_ERRO}        5  
    
Login com senha nao informada
    Open Browser    ${PAGINA}              ${BROWSER}
    Fill Text       id=user_email          ${EMAIL}
    Fill Text       id=user_password       ${EMPTY}
    Click           css=input[value="Log in"]
    Get Text        css=.is-danger .message-body    should be       ${MENSAGEM_ERRO}        5
    
Login com e-mail e senha nao informada
    Open Browser    ${PAGINA}              ${BROWSER}
    Fill Text       id=user_email          ${EMPTY}
    Fill Text       id=user_password       ${EMPTY}
    Click           css=input[value="Log in"]
    Get Text        css=.is-danger .message-body    should be       ${MENSAGEM_ERRO}        5


