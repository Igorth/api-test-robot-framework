*Settings*
Documentation    Test Suite Search API Hot Peppers

Resource    ${EXECDIR}/resources/Base.robot
Library     ${EXECDIR}/resources/factories/Heartbeat.py

Suite Setup     Super Setup

*Test Cases*
Search a HotPepper by ID

    ${hotpeppers}       Factory Heartbeat
    ${heartbeat}        POST New HotPeppers  ${hotpeppers}
    ${heartbeat_id}     Set Variable        ${heartbeat.json()}[id]

    ${response}         GET HotPepper By ID  ${heartbeat_id}

    Status Should Be    200     ${response}

    Should Be Equal     ${heartbeat.json()}[brandName]      ${hotpeppers}[brandName]
    Should Be Equal     ${heartbeat.json()}[sauceName]      ${hotpeppers}[sauceName]
    Should Be Equal     ${heartbeat.json()}[description]    ${hotpeppers}[description]
    Should Be Equal     ${heartbeat.json()}[url]            ${hotpeppers}[url]
    Should Be Equal     ${heartbeat.json()}[heat]           ${hotpeppers}[heat]
    