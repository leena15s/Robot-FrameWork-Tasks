*** Settings ***
Resource    Resource/Resource.robot



*** Variables ***
${BROWSER}        Chrome

${email_login}     //input[@data-qa="login-email"]
${valid_email}       john.doe@automation.com
${password_login}     //input[@data-qa="login-password"]
${valid_password}       SecurePassword123
${login-button}           //button[@data-qa="login-button"]
${logout_btn}            //a[@href="/logout"]

${CSV_}    TestData/UsersForLogin.csv
${error_msg}    //p[text()='Your email or password is incorrect!']



*** Keywords ***

Enter valid credentials
    Wait And Input Text    ${email_login}     ${valid_email}     
    Wait And Input Text    ${password_login}      ${valid_password}
    Wait And Click    ${login-button}

Verify login success
    Wait Until Page Contains Element    ${logout_btn}

Login with csv DDT
   [Arguments]    ${username}    ${password}
    Wait And Input Text    ${username}
    Wait And Input Text     ${password}
    Wait And Click     ${login-button}


Login With Multiple Users From CSV (DDT)
   ${data}    Read Csv File To List       ${CSV_}
   FOR    ${row}    IN    @{data}
        ${username}    ${password}    Set Variable    ${row}[0]    ${row}[1]
        Log    Logging in with ${username} and ${password}
        Wait And Input Text    ${email_login}      ${username}
        Wait And Input Text    ${password_login}       ${password}
        Wait And Click    ${login-button}
   END
   Verify Login Success
