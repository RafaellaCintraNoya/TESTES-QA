*** Settings ***
Library    SeleniumLibrary


### Data ###
Resource    Data/geral.robot
Resource    Data/registro.robot
### Shares ###
Resource  Shared/setup.teardown.robot

### Pages ###
Resource    Pages/home_page.robot
Resource    Pages/login_page.robot
Resource    Pages/registro_page.robot
Resource    Pages/reserva_page.robot
Resource    Pages/visto_page.robot
Resource    Pages/voo_page.robot
Resource    Pages/voo_resultado_page.robot     
