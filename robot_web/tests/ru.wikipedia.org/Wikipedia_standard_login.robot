*** Settings ***
Documentation    Переходим на сайт википедии, переходим на избранную статью, меняем язык на англ, меняем тему на тёмную
Resource         wikipedia.resource
Resource         ../../locators/ru.wikipedia.org_lc/wikipedia_lc.resource

Test Setup       web.Precondition: Open Browser And Maximize    site_url=https://ru.wikipedia.org/w/index.php?title=%D0%A1%D0%BB%D1%83%D0%B6%D0%B5%D0%B1%D0%BD%D0%B0%D1%8F:%D0%92%D1%85%D0%BE%D0%B4&returnto=%D0%97%D0%B0%D0%B3%D0%BB%D0%B0%D0%B2%D0%BD%D0%B0%D1%8F+%D1%81%D1%82%D1%80%D0%B0%D0%BD%D0%B8%D1%86%D0%B0    browser=chrome
Test Teardown    web.Postcondition: Close Browser    secs_of_sleep=5

Test Timeout     1m


*** Test Cases ***
Standard login Wikipedia
    [Documentation]    Стандартная авторизация с валидными логином и паролем

    Wait Until Element Is Visible    locator=${LOGIN_FIELD}

    Clear Element Text    locator=${LOGIN_FIELD}
    Clear Element Text    locator=${PASSWORD_FIELD}

    Input Text    locator=${LOGIN_FIELD}    text=%{VALID_LOGIN}
    Input Password    locator=${PASSWORD_FIELD}    password=%{VALID_PASSWORD}
    Click Button    locator=${LOGIN_ATTEMPT_BTN}

    Wait Until Element Is Visible    locator=${LOGOUT_CSS}
