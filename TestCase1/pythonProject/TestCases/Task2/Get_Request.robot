*** Settings ***
Library     RequestsLibrary
Library     Collections

*** Variables ***
${base_url}     http://api.countrylayer.com
${alpha}        /v2/alpha/

*** Test Cases ***
Get Request Test
    ${response}=    GET  ${base_url}    expected_status=200

Get Request With Parameters Test
    ${city}=    Set Variable  ${1}  #Valid Country (US, DE and GB)
    ${token}=  Set Variable  ${2}   #Valid token (Your Token)

    ${response}=    GET  ${base_url}${alpha}${city}?  params=access_key=${token}
    should be equal as numbers    ${response.status_code}   200
