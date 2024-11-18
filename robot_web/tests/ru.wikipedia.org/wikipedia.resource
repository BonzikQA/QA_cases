*** Settings ***
Documentation    Кейворды для ru.wikipedia.org
Resource    ../web.resource
Resource    ../../locators/ru.wikipedia.org_lc/wikipedia_lc.resource


*** Keywords ***
Goto Article Of A Day
    [Documentation]    Ждём пока кнопка перехода к избранной статье (${GOTO_ARTICKE_OF_A_DAY_BTN})
    ...    не будет видна и жмём на неё

    Wait Until Element Is Visible    locator=${GOTO_ARTICKE_OF_A_DAY_BTN}    timeout=10s
    Click Element    locator=${GOTO_ARTICKE_OF_A_DAY_BTN}

Change The Lang To Eng
    [Documentation]    Ждём пока кнопка смены языка на Англ (${CHANGE_LANG_TO_EN_BTN})
    ...    не будет видна и жмём на неё. Ждём, пока не будет видно заголовка статьи (значит прогрузилось)

    Wait Until Element Is Visible    locator=${CHANGE_LANG_TO_EN_BTN}    timeout=10s
    Click Element    locator=${CHANGE_LANG_TO_EN_BTN}

    Page Should Contain Element    locator=${FIRST_HEADING}

Change View Theme To Dark Mode
    [Documentation]    Ждём пока радар-кнопка смены темы на тёмную
    ...    (${DARK_MODE_RADAR}) не появится и жмём её

    Wait Until Page Contains Element    locator=${DARK_MODE_RADAR}
    Click Element    locator=${DARK_MODE_RADAR}
