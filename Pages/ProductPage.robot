*** Settings ***
Library    SeleniumLibrary
Resource    Configs/keywords.robot
Resource    Pages/LoginPage.robot
Resource    Pages/HomePage.robot

*** Variables ***
${search_field}    //input[@id='search_product']
${search_input}    women
${search_btn}    //button[@id='submit_search']
${view_product}    //p[contains(text(), 'Get the most recent updates from')]


${product_one}       //*[@data-product-id='7']

${product_two}        //a[@data-product-id='42']
${Continue_Shopping}    //button[contains(text(), 'Continue Shopping')]

${shopping-cart}      //i[contains(@class, 'fa-shopping-cart')]

${Checkout_btn}    //a[contains(@class, 'check_out')]

${Continue_checkout}    //button[contains(text(), 'Continue Shopping')]


${payment}        //a[contains(text(), 'Place Order')]




*** Keywords ***

Search for product
    Wait And Input Text    ${search_field}      ${search_input}
    Wait And Click    ${search_btn}
#    Scroll Element Into View    ${view_product}
#    Wait Until Page Contains     ${view_product}
#    Wait And Click    ${product_one}
#    Wait And Click    ${product_two}


Add two product
    Scroll Element Into View    ${view_product}
    Wait And Click    ${product_one}
    Wait And Click    ${Continue_Shopping}    3s
    Wait And Click    ${product_two}
    Wait And Click    ${Continue_Shopping}    3s

Continues to checkout
    Wait And Click    ${shopping-cart}    3s
    Sleep    3s
    Wait Until Page Contains Element     ${Checkout_btn}
    Wait And Click     ${Checkout_btn}
    Sleep    5s
    Scroll Element Into View    ${view_product}
    Wait And Click        ${payment}

    Sleep    3s


TC01 Verify login success
    Open Website Homepage
    Navigate To Login Page
    Enter valid credentials
    Verify login success

