*** Settings ***
Documentation    Переходим на сайт википедии, переходим на избранную статью, меняем язык на англ, меняем тему на тёмную
Resource         wikipedia.resource
Resource         ../../locators/ru.wikipedia.org_lc/wikipedia_lc.resource

Test Setup       web.Precondition: Open Browser And Maximize    site_url=https://ru.wikipedia.org    browser=chrome
Test Teardown    web.Postcondition: Close Browser    secs_of_sleep=10

Test Timeout     1m


*** Test Cases ***
Click On Article Of A Day On Wikipedia Then Change Lang And Theme
    [Documentation]    Открываем стр википедии в хроме -> переходим на стр. избр. статьи ->
    ...    меняем язык на англ -> меняем тему на тёмную

    wikipedia.Goto Article Of A Day
    wikipedia.Change The Lang To Eng
    wikipedia.Change View Theme To Dark Mode
