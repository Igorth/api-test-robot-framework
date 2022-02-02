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