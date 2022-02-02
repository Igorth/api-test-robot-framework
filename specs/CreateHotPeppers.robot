*Settings*
Documentation    Test Suite Hot Peppers API Registration

Resource    ${EXECDIR}/resources/Base.robot
Library     ${EXECDIR}/resources/factories/Cholula.py
Library     ${EXECDIR}/resources/factories/Torchbearer.py

Suite Setup     Run Keywords    Back To The Past

*Test Cases*
Should register a new Hot Pepper

    ${hotpeppers}    Factory Torchbearer
    ${response}    POST New HotPeppers  ${hotpeppers}

    Status Should Be    201    ${response}