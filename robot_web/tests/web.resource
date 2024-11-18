*** Settings ***
Documentation    Общие кейворды для всех тестов
Library          SeleniumLibrary


*** Keywords ***
Precondition: Open Browser And Maximize
    [Documentation]    Предусловие: Открываем сайт (arg1 - site_url) в Браузере
    ...    (arg2 - browser) и расширяем окно на весь экран
    [Arguments]    ${site_url}    ${browser}

    Open Browser    url=${site_url}   browser=${browser}
    Maximize Browser Window

Postcondition: Close Browser
    [Documentation]    Закрываем браузер через (arg - secs_of_sleep) секунд после успешного теста
    [Arguments]    ${secs_of_sleep}

    Sleep    time_=${secs_of_sleep}
    Close Browser
