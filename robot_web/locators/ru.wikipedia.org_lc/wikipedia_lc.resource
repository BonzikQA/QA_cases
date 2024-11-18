*** Settings ***
Documentation    Локаторы для сайта ru.wikipedia.org


*** Variables ***
${GOTO_ARTICKE_OF_A_DAY_BTN}    (//a[text()='Читать'])[1]    # Кнопка "Читать" на избранной статье
${CHANGE_LANG_TO_EN_BTN}        //a[@lang="en"]    # Кнопка смены языка на англ
${FIRST_HEADING}                //h1[@id="firstHeading"]    # Элемент "Название статьи"
${DARK_MODE_RADAR}    //input[@id='skin-client-pref-skin-theme-value-night']    # Кнопка включения тёмной темы
