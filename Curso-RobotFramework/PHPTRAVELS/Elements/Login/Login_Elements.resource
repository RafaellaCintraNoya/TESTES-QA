*** Variables ***
&{Login}

#Elementos da página de registro
...    Input_PrimeiroNome=//*[@id="firstname"]
...    Input_UltimoNome=//*[@id="last_name"]
...    Input_Telefone=//*[@id="phone"]
...    Input_Email=//*[@id="user_email"]
...    Input_Senha=//*[@id="password"]
...    Button_Signup=//*[@id="signup"]/div/div/div/div[8]/div[1]
...    Button_Cookie=//*[@id="checkbox"]

#Elementos página de Login
...    Input_EmailLogin=//input[@placeholder="Email"] 
...    Input_SenhaLogin=//input[@placeholder="Password"]
...    Button_Logar=//span[contains(text(),"Login")]
...    A_OpcaoLogin=(//a[@href="https://www.phptravels.net/login"])[2]
