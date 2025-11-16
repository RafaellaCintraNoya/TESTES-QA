*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary

*** Variables ***
#Settings
${Url}        https://demoqa.com/automation-practice-form
${Browser}    chrome

#Elements
${First_Name}      firstName
${LastName}        lastName
${Email}           userEmail
${MobileNumber}    userNumber
${Address}         currentAddress

*** Keywords ***
Dado que acesse o formulário
    Open Browser    ${Url}    ${Browser}

Então o formulário deve ser preenchido
    Wait Until Element Is Visible    ${First_Name}    10s
    ${Nome}       FakerLibrary.FirstName
    Input Text    ${First_Name}    ${Nome}
    ${Sobrenome}  FakerLibrary.LastName
    Input Text    ${Last_Name}     ${Sobrenome}
    ${EmailData}  FakerLibrary.FreeEmail
    Input Text    ${Email}    ${EmailData}
    ${Telefone}   FakerLibrary.PhoneNumber
    Input Text    ${MobileNumber}  ${Telefone}
    ${Endereço}   FakerLibrary.Address
    Input Text    ${Address}    Endereço

*** Test Cases ***
TC01 - Acessar e preencher formulário
    [Tags]    TC01
    Dado que acesse o formulário
    Então o formulário deve ser preenchido    
