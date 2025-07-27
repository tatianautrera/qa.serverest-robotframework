*** Settings ***
Documentation     Tests for user creation functionality

Resource          ../../resources/main.resource
Resource          ../../resources/user/data/dataUser.resource

*** Test Cases ***
Create User Successfully
    [Documentation]    Test to create a user with valid Data
    ${user}=    Create Valid User
    Create User    ${user}
    Should Be Create User With Successfully    201    Cadastro realizado com sucesso