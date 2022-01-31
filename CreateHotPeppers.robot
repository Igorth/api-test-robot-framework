*Settings*
Documentation       Test Suite Hot Peppers API Registration

Library     RequestsLibrary
Library     ${EXECDIR}/factories/HotPeppers.py

*Variables*
${base_url}     https://apiqanbccproject.herokuapp.com

*Test Cases*  
Should register a new Hot Pepper

    &{hotpeppers}       Factory HotPeppers

    POST
    ...     ${base_url}/api/hotpeppers/
    ...     json=${hotpeppers}