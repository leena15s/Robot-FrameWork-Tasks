*** Settings ***
Resource    Resource/Resource.robot

Test Setup    Open Website Homepage
Test Teardown    Close Browser

*** Test Cases ***

TC01 Verify login success
#    Open Website Homepage
    Navigate To Login Page
    Enter valid credentials
    Verify login success


# TC02 Login Test with DDT
#    Open Website Homepage
#    Navigate To Login Page
#    Login With Multiple Users From CSV (DDT)

# TC03 END TO END
#    TC01 Verify login success
#    Navigate To Product Page
#    Search For Product
#    Add Two Product
#    Sleep    3s
#    Continues to checkout
#    Sleep    3s
#    Close Browser

