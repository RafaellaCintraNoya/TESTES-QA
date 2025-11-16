*** Settings ***
Library  FakerLibrary

*** Variables ***
&{login}
...  Input_Username=//*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[1]/div/div[2]/input
...  Input_Password=//*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[2]/div/div[2]/input
...  Btn_Login=//*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button