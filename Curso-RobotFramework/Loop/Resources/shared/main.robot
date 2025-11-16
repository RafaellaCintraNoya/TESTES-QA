*** Settings ***
Library  SeleniumLibrary
Library  FakerLibrary

### Shared ###
Resource  setups_teardowns.robot

### Data ###
Resource  ../data/setup_data.robot
Resource  ../data/employuee_data.robot

### Pages ###
Resource  ../Page/login_page.robot
Resource  ../Page/home_page.robot
Resource  ../Page/nem_employee_page.robot