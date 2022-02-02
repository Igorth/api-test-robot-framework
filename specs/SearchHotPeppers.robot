*Settings*
Documentation    Test Suite Search API Hot Peppers

Resource    ${EXECDIR}/resources/Base.robot
Library     ${EXECDIR}/resources/factories/Cholula.py

Suite Setup     Super Setup

*Test Cases*
Search a HotPepper by ID

    ${hotpeppers}       Factory Cholula
    ${cholula}          POST New HotPeppers  ${hotpeppers}

    ${cholula_id}       Set Variable        ${cholula.json()}[id]

    ${response}         GET HotPepper By ID  ${cholula_id}

    Status Should Be    200     ${response}