*** Settings ***
Library    Browser

*** Test Cases ***
Succesful To Add Cookie
    New Browser    headless=${FALSE}
    New Page    httl://localhost:8080
    Fill Text    id=message    Test Cookie!
    Click    css=type#submit
    Get Text    css=div#output    Cookie Added!
    
