*** Settings ***
Documentation    Открываем браузер и переходим на гл. стр. яндекса
Library    SeleniumLibrary


*** Test Cases ***
First Test
    [Documentation]    Открываем яндекс
    Open Browser    url=https://ya.ru/    browser=edge
    Sleep    time_=5s
    Close Browser
