*Settings*
Documentation    Test Suite Registration API Hot Peppers API

Resource    ${EXECDIR}/resources/Base.robot
Library     ${EXECDIR}/resources/factories/Torchbearer.py

Suite Setup     Super Setup

*Test Cases*
Should register a new Hot Pepper

    ${hotpeppers}    Factory Torchbearer
    ${response}    POST New HotPeppers  ${hotpeppers}

    Status Should Be    201    ${response}