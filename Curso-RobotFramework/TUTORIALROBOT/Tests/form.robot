Acessar sites
** Settings **
Library  SeleniumLibrary

** Variables **
${input_firstName}        //input[@id="firstName"]
${input_LastName}         //input[@id="lastName"]
${input_Email}            //input[@placeholder="name@example.com"]
${label_Female}           //label[@for='gender-radio-2'] 
${input_Mobile}           //input[@placeholder='Mobile Number']  
${input_Subjects}         //input[@id='subjectsInput']
${input_Hobbies}          //label[@for='hobbies-checkbox-1']         
${textarea_Address}       //textarea[@id='currentAddress']
${State}                  //*[@id="state"]/div/div[1]
${div_City}               //div[normalize-space(text())='NCR']
${div_City2}              //input[@id='react-select-4-input']
${button_submit}          //*[@id="submit"]

  

** Keywords **
Abrir navegador e acessar o site
     Open Browser    https://demoqa.com/automation-practice-form    chrome 

Manutenção do Zoom
    Press Keys    NONE    CONTROL+-    # Diminui o zoom
    Press Keys    NONE    CONTROL-    # Pode repetir

Preencher campos
    Input Text         ${input_firstName}     Rafaella 
    Input Text         ${input_LastName}      Noya
    Input Text         ${input_Email}         rafaella.noya@mv.com.br
    Wait Until Element Is Visible    ${label_Female}    10s
    Scroll Element Into View         ${label_Female}
    Click Element                    ${label_Female} 
    Input Text         ${input_Mobile}         81998999999
    Input Text         ${input_Subjects}        Computer Science 
    Press Keys           NONE    TAB
    Wait Until Element Is Visible    ${input_Hobbies}    10s
    Scroll Element Into View         ${input_Hobbies}
    Click Element                    ${input_Hobbies}      
    Input Text         ${textarea_Address}    Teste Rua A
    Click Element                    ${State}
    Press Keys    NONE    ENTER
    Input Text         ${div_City2}            Delhi
    Press Keys    NONE    TAB
Clicar em submit
    Click Element            ${button_submit}       
Fechar navegador
    Close Browser    

** Test Cases **
Cenário 1: Preencher formulário
    Abrir navegador e acessar o site
    Preencher campos
    Clicar em submit
    Fechar Navegador