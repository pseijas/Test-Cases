*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}          Chrome
${URL}              https://demo.evershop.io/
${USERNAME}         MiUsuario2
${EMAIL}            miusuario2@example.com
${PASSWORD}         MiContraseña

*** Test Cases ***
Register new user
    Open new Browser
    #Go Register Page
    #Register new user
    Select Product 1
    Select Product 2
    Select Product 3
    CheckOut
    #Close Browser

*** Keywords ***
Open new Browser
    Open Browser    about:blank    ${BROWSER}
    Maximize Browser Window

#Go Register Page
#    Go To    ${URL}
#    click link      //a[contains(@href, "/account/login")]
#    sleep    2
#    click link      //a[contains(@href, "/account/register")]
#    sleep    2

#Register new user
#    Input Text    name=full_name    ${USERNAME}
#    Input Text    name=email       ${EMAIL}
#    Input Text    name=password    ${PASSWORD}
#    Click Button    css:button[type="button"]

Select Product 1
    Go To    ${URL}
    click link    //a[contains(@href, "/men/nike-air-zoom-pegasus-35-146")]
    click link    //a[text()="M"]
    click link    //a[text()="Black"]
    sleep    1
    Click Button    css:button[type="button"]
    sleep    1
    click link    //a[text()="Continue Shopping"]
    sleep    2
    click link    //a[contains(@href, "/")]

Select Product 2
    sleep    1
    click link    //a[contains(@href, "/mix-and-match-chuck-taylor-all-star-118")]
    sleep    1
    click link    //a[text()="L"]
    click link    //a[text()="Grey"]
    sleep    1
    Click Button    css:button[type="button"]
    sleep    1
    click link    //a[text()="Continue Shopping"]
    sleep    2
    click link    //a[contains(@href, "/")]

Select Product 3
    sleep    1
    click link    //a[contains(@href, "/geography-class-chuck-taylor-all-star-81")]
    sleep    1
    click link    //a[text()="X"]
    click link    //a[text()="White"]
    sleep    1
    Click Button    css:button[type="button"]
    sleep    1
    click link    //a[text()="Continue Shopping"]
    sleep    2
    click link    //a[contains(@href, "/cart")]

CheckOut
    sleep    1
    click link    //a[contains(@href, "/checkout")]

#Close Browser
#    Close Browser
