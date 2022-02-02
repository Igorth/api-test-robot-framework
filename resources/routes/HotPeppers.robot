*Settings
Documentation    Actions route /api/hotpeppers

*Keywords*
POST New HotPeppers
    [Arguments]       ${payload}

    ${response}    POST
    ...            ${API_URL}/api/hotpeppers/
    ...            json=${payload}
    ...            expected_status=any

    [return]    ${response}

GET HotPepper By ID
    [Arguments]     ${hotpepper_id}

    ${response}     GET
    ...             ${API_URL}/api/hotpeppers/${hotpepper_id}
    ...             expected_status=any

    [return]        ${response}

DELETE HotPepper By ID
    [Arguments]     ${hotpepper_id}

    ${response}     DELETE
    ...             ${API_URL}/api/hotpeppers/${hotpepper_id}
    ...             expected_status=any

    [return]        ${response}