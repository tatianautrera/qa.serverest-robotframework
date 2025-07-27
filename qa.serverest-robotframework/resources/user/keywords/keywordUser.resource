*** Settings ***
Documentation     Keywords for user

Library          RequestsLibrary
Resource          ../../main.resource

*** Keywords ***
Create User
    [Arguments]    ${user}
    Create Session    user    ${BASE_URL}
    ${response}    POST On Session    user    /usuarios    json=${user}
    Set Test Variable    ${response}
    Log To Console    ${response.json()}[message]

Should Be Create User With Successfully
    [Arguments]    ${status_code}    ${message}
    Should Be Equal As Strings    ${response.status_code}    ${status_code}
    Should Be Equal    ${response.json()}[message]    ${message}