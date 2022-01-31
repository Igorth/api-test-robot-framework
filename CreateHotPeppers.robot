*Settings*
Documentation       Test Suite Hot Peppers API Registration

Library     RequestsLibrary

*Variables*
${base_url}     https://apiqanbccproject.herokuapp.com

*Test Cases*  
Should register a new Hot Pepper

    &{hotpeppers}       Create Dictionary
    ...                 brandName=Cholula
    ...                 sauceName=Original
    ...                 description=Cholula Original Hot Sauce is created from a generations old recipe that features carefully-selectedarbol
    ...                 url=https://www.cholula.com/original.html
    ...                 heat=3600

    POST
    ...     ${base_url}/api/hotpeppers/
    ...     json=${hotpeppers}