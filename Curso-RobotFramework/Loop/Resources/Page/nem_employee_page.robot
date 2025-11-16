*** Settings ***
Library  SeleniumLibrary
Library  FakerLibrary
Resource  ../data/employuee_data.robot
Resource  home_page.robot

*** Variables ***
&{new_employee}
...  Input_FirstName=//input[@name='firstName']
...  Input_MiddleName=//input[@name='middleName']
...  Input_LastName=//input[@name='lastName']
...  Photo_Input=//button[contains(@class,'employee-image-action')]
...  Btn_Save=//button[normalize-space()='Save']
...  Title_Registred_Employee=//h6[normalize-space()='Add Employee']

*** Keywords ***
Então adiciono ${Quantidade} novos usuários
    FOR  ${i}  IN RANGE  ${Quantidade}
        Sleep    20s
        Wait Until Element Is Visible  ${new_employee.Input_FirstName}
        ${PrimeiroNome}    FakerLibrary.FirstName
        ${NomedoMeio}      FakerLibrary.First Name
        ${UltimoNome}      FakerLibrary.LastName
        Input Text  ${new_employee.Input_FirstName}  ${PrimeiroNome}
        Input Text  ${new_employee.Input_MiddleName}  ${NomedoMeio} 
        Input Text  ${new_employee.Input_LastName}  ${UltimoNome}
        Choose File  ${new_employee.Photo_Input}  ${employee.Profile_Photo}  
        Click Element  ${new_employee.Btn_Save} 
        Wait Until Element Is Visible  ${new_employee.Title_Registred_Employee}
        Log  Usuário ${PrimeiroNome} ${NomedoMeio} ${UltimoNome} criado com sucesso
        Dado que eu acesse a opção PIM no menu
        E clico em "Add Employee"
    END