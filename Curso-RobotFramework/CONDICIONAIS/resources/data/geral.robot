*** Settings ***
Resource  ../Main.robot

*** Variables ***
&{geral}
...   URL=https://www.phptravels.net/
...   Browser=chrome
#Cliente Credentials
...    Cliente_URL= https://www.phptravels.net/login
...    Cliente_User=user@phptravels.com
...    Cliente_Password=demouser 
#Admin Credentials
...    Admin_URL=https://www.phptravels.net/api/admin
...    Admin_User=admin@phptravels.com
...    Admin_Password=demoadmin