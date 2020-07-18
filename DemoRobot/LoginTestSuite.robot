*** Settings ***
Library    SeleniumLibrary    

*** Test Cases ***
LoginTest
    [Documentation]    Ceci un test de login
    Open Browser     ${URL}   ${Browser}
    Maximize Browser Window
    Input Text    id=txtUsername    &{DataLogin}[username]     #@{Login}[0]    
    Input Password    id=txtPassword    &{DataLogin}[password]    #@{Login}[1]
    Click Button    id=btnLogin  
    Click Element    id=welcome  
    Set Browser Implicit Wait    5
    Click Element    link=Logout   
    Log   Ceci est un test execute par %{username} dans %{os}   
    Log    Fin de test
    
# Ceci est un commenetaire
*** Variables ***
# Exemple de variables scalaires
${URL}    https://opensource-demo.orangehrmlive.com/index.php/auth/login
${Browser}    gc

# Exemple de variable de type liste
@{Login}    Admin    admin123

# Varialbe de type dictionnaire
&{DataLogin}    username=Admin    password=admin123


                 
   
    