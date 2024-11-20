*** Settings ***
Documentation    Локаторы для сайта ru.wikipedia.org


*** Variables ***
${GOTO_ARTICLE_OF_A_DAY_BTN}    (//a[text()='Читать'])[1]                                 # Кнпк "Читать" на изб. статье
${CHANGE_LANG_TO_EN_BTN}        //a[@lang="en"]                                           # Кнопка смены языка на англ
${FIRST_HEADING}                //h1[@id="firstHeading"]                                  # Элемент "Название статьи"
${DARK_MODE_RADAR}              //input[@id='skin-client-pref-skin-theme-value-night']    # Кнопка включения тёмной темы

${LOGIN_FIELD}                  //input[@id='wpName1']                                    # Поле ввода логина
${PASSWORD_FIELD}               //input[@id='wpPassword1']                                # Поле ввода пароля
${LOGIN_ATTEMPT_BTN}            //button[@id='wpLoginAttempt']                            # Кнопка входа в систему
${STAY_LOGGED_IN_CHBX}       //input[@id='wpRemember']                                 # Чекбокс "Оставаться в системе"
${GOTO_LOGIN_PAGE_BTN}       //a[@title='Здесь можно зарегистрироваться в системе, но это необязательно. [alt-shift-o]']
${LOGOUT_XPATH}                 //a[@title='Завершить сеанс работы']                      # Выйти из аккаунта (XPATH)
${LOGOUT_CSS}                   css:li#pt-logout                                          # Выйти из аккаунта (CSS)

${LOGIN_ERROR_TEXT}             //div[@class='cdx-message__content']                      # Плашка об ошибке входа
