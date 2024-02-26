*** Settings ***
Library     RequestsLibrary
Library     Collections

*** Variables ***
${base_url}     http://api.countrylayer.com
${alpha}        /v2/alpha/

*** Test Cases ***
Get Request With Invalid Parameter
    ${city}=    Set Variable  ${1}  #Invalid Country (NT)
    ${token}=  Set Variable  ${2}   #Valid token (Your Token)

    ${response}=    GET  ${base_url}${alpha}${city}?  params=access_key=${token}    expected_status=404
    should be equal as numbers    ${response.status_code}   404
