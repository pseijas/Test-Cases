*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}          Chrome
${URL}              https://demo.evershop.io/
${USERNAME}         MiUsuario
${EMAIL}            miusuario@example.com
${PASSWORD}         MiContraseña

*** Test Cases ***
Registrar Nuevo Usuario
    Abrir Navegador
    Ir a la Página de Registro
    #Completar Formulario de Registro
    #Verificar Registro Exitoso

*** Keywords ***
Abrir Navegador
    Open Browser    about:blank    ${BROWSER}
    Maximize Browser Window


Ir a la Página de Registro
    Go To    ${URL}
    #Click Button    xpath=//button[contains(text(), '/account/login')]
    click link      //a[contains(@href, "/account/login")]
    #click button    href="/account/login"