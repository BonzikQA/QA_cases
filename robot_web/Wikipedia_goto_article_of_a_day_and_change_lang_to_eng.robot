*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Click on article of a day on Wikipedia
    Open Browser    url=https://ru.wikipedia.org/    browser=chrome
    Maximize Browser Window

    Wait Until Element Is Visible    locator=(//a[text()='Читать'])[1]    timeout=10s
    Click Element    locator=(//a[text()='Читать'])[1]
    
    Wait Until Element Is Visible    locator=//a[@lang="en"]    timeout=10s
    Click Element    locator=//a[@lang="en"]

    Wait Until Page Contains Element    locator=//h1[@id="firstHeading"]
    Close Browser