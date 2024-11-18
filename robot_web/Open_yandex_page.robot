*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
First Test
    Open Browser    url=https://ya.ru/    browser=edge
    Sleep    time_=5s
    Close Browser