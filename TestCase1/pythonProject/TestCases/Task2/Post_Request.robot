*** Settings ***
Library     RequestsLibrary

*** Variables ***
${base_url}         http://api.countrylayer.com
${end_point}        /Country
${name}             Not Found
${topLevelDomain}   .nf
${alpha2Code}       NF
${alpha3Code}       NFD


*** Test Cases ***
Send POST Request with JSON
    Create Session    postSession    ${base_url}
    ${url}=         set variable    ${base_url}${end_point}
    ${body}=        create dictionary    name=${name}   topLevelDomain=${topLevelDomain}    alpha2Code=${alpha2Code}    alpha3Code=${alpha3Code}
    ${header}=      create dictionary    Content-Type=application-json
    ${response}=    post request    postSession     ${url}  json=${body}    headers=${header}
    log    ${response.content}
    should be equal as strings    ${response.status.code}   422

