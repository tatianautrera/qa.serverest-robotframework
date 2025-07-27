*** Settings ***
Documentation     Data for test user

Library    FakerLibrary

*** Keywords ***
Create Valid User
    ${email}=    FakerLibrary.email
    ${user}    Create Dictionary
    ...    nome=John Doe
    ...    email=${email}
    ...    password=123
    ...    administrador=true  
    
    RETURN    ${user}  