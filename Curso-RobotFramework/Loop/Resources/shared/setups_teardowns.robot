*** Settings ***
Library  SeleniumLibrary
Resource  ../data/setup_data.robot
Resource  ../Page/login_page.robot
Resource  ../Page/home_page.robot



*** Keywords ***
Acessar site e logar
    Should Not Be Empty  ${setup.URL}  URL de login não configurada
    Open Browser  ${setup.URL}  ${setup.Browser}
    Maximize Browser Window
    Wait Until Element Is Visible  ${login.Input_Username}  15s
    Input Text  ${login.Input_Username}  ${setup.User}   
    Wait Until Element Is Visible  ${login.Input_Password}
    Input Text  ${login.Input_Password}  ${setup.Password}
    Wait Until Element Is Visible  ${login.Btn_Login}
    Click Element  ${login.Btn_Login}
    Wait Until Location Is  https://opensource-demo.orangehrmlive.com/web/index.php/dashboard/index 

Fechar navegador
    Close Browser
