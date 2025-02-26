*** Settings ***
Library  SeleniumLibrary

*** Keywords ***

Open Browser And Maximize
    [Arguments]    ${url}    ${browser}=Chrome
    Open Browser    ${url}    ${browser}
#    Maximize Browser Window


Wait And Click
    [Arguments]    ${locator}    ${timeout}=10s
    Wait Until Element Is Visible    ${locator}    timeout=${timeout}
    Click Element    ${locator}

Wait And Input Text
    [Arguments]    ${locator}    ${text}    ${timeout}=10s
    Wait Until Element Is Visible    ${locator}    timeout=${timeout}
    Input Text    ${locator}    ${text}

Verify Page Title
    [Arguments]    ${expected_title}
    ${actual_title}=    Get Title
    Should Be Equal    ${actual_title}    ${expected_title}

