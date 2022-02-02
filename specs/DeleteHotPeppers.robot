*Settings*
Documentation    Test Suite Delete API Hot Peppers

Resource    ${EXECDIR}/resources/Base.robot
Library     ${EXECDIR}/resources/factories/Cholula.py

Suite Setup     Super Setup

*Test Cases*
Delete a HotPepper by ID

    ${hotpeppers}       Factory Cholula
    ${cholula}        POST New HotPeppers  ${hotpeppers}
    ${cholula_id}     Set Variable        ${cholula.json()}[id]

    ${response}         DELETE HotPepper By ID      ${cholula_id}

    Status Should Be    204     ${response}

    ${response2}         GET HotPepper By ID        ${cholula_id}

    Status Should Be    404     ${response2}

Should not delete the HotPepper by ID

    ${hotpepper_id}     Set Variable        10

    ${response}         DELETE HotPepper By ID      ${hotpepper_id}

    Status Should Be    404     ${response}
    