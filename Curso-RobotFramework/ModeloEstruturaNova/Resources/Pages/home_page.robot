*** Settings ***
Resource  ../Main.robot

*** Variables ***
&{home}
...    a_Costumer=//span[normalize-space(.)='Customer' and contains(@class,'text-dark')]
...    A_Signup=//*[@id="navbarSupportedContent"]/div[2]/ul/li[4]/ul/li[2]/a
...    a_voos= //a[contains(text(),"flights")] 
...    A_Visto= //a[@href="https://www.phptravels.net/visa"]
...    a_voos=//*[@id="navbarSupportedContent"]/div[1]/ul/li[1]/a
*** Keywords ***
E acesso a página de visto
    Wait Until Element Is Visible  ${home.A_Visto}  10
    Click Element  ${home.A_Visto}