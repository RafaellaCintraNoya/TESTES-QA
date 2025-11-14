***Settings ***
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão


*** Variables ***
${check_thor}       id:thor
${check_iron}       css:input[value='iron-man']
${check_panther}    xpath://*[@id='checkboxes']/input[7]


*** Test Cases ***

Marcando opção com Id
    Go To                              ${url}/checkboxes
    Select Checkbox                    id:thor
    Checkbox Should Be Selected        id:thor
 
Marcando opção com CSS Selector
    Go To                           ${url}/checkboxes
    Select Checkbox                 css:input[value='iron-man']
    Checkbox Should Be Selected     css:input[value='iron-man']
    


Marcando oção com Xpath
    [Tags]      ironman
    Go To                           ${url}/checkboxes
    Select Checkbox                 css:input[value='iron-man']
    Checkbox Should Be Selected     css:input[value='iron-man']
  



