*** Settings ***
Library  SeleniumLibrary
Resource    Configs/keywords.robot

*** Variables ***
${URL}         https://www.automationexercise.com/
${Login_btn}   //*[contains(text(), "Signup / Login")]
${Product_btn}    //i[contains(@class, 'card_travel')]



*** Keywords ***
Open Website Homepage
   Open Browser And Maximize    ${URL}


Navigate To Login Page
    Wait And Click    ${Login_btn}    5s


Navigate To Product Page
    Wait And Click    ${Product_btn}    5s
