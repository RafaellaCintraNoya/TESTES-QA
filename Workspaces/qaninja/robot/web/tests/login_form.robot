***Settings ***
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão

*** Test Cases ***
Login com sucesso
    Go To           ${url}/login
    Login With      stark       jarvis!

    Should See Logged username  Tony Stark
    

    Page Should Contain     Olá, Tony Stark. Você acessou a área logada!


Senha inválida
    [tags]          login_error
    Go To           ${url}/login
    Input Text      css:input[name=username]            stark
    Input Text      css:input[name=password]            abc1235
    Click Element   class:btn-login

    ${message}=      Get WebElement         id:flash
    Should Contain    ${message.text}        Senha é invalida!

Usuário não existe
    [tags]          login_user404
    Go To           ${url}/login
    Input Text      css:input[name=username]            Rafaella
    Input Text      css:input[name=password]            axwc1235
    Click Element   class:btn-login

    ${message}=      Get WebElement         id:flash
    Should Contain    ${message.text}        O usuário informado não está cadastrado!


*** Keywords ***
Login With
    [Arguments]         ${usame}        ${pass}

    Input Text          css:input[name=username]        ${usame}
    Input Text          css:input[name=password]        ${pass}
    Click Element



