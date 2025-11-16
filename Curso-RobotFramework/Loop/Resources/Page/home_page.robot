*** Settings ***
Library  SeleniumLibrary
Library  FakerLibrary

*** Variables ***
&{home}
...  H1_Title=//*[@id="app"]/div[1]/div[1]/aside/nav/div[2]/ul/li[8]/a
...  Opcao_PIM_Menu=//*[@id="app"]/div[1]/div[1]/aside/nav/div[2]/ul/li[2]/a/span
...  Btn_Add_Employee=//*[@id="app"]/div[1]/div[1]/header/div[2]/nav/ul/li[3]

*** Keywords ***
Dado que eu acesse a opção PIM no menu
    Wait Until Page Contains Element    ${home.Opcao_PIM_Menu}  15s
    Click Element    ${home.Opcao_PIM_Menu}

E clico em "Add Employee"
    Wait Until Element Is Visible  ${home.Btn_Add_Employee}  20s
    Click Element  ${home.Btn_Add_Employee}