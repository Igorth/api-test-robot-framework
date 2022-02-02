# Robot Framework testing API

Using [Robot Framework](https://robotframework.org/) to do Functional Testing in the[API Hot Peppers](https://github.com/Igorth/apiqanbccproject)

# Install
- install python 3
- install Robot
- install Java
- install Node.js
- intall [allure](https://github.com/allure-framework/allure-python/tree/master/allure-robotframework)

# How To Run
- clone this repository
- cd api-test-robot-framework

## View the logs
In the terminal:
- robot -d ./logs specs/


## You can see the logs using the the Allure CLI
In the terminal:
- npm install allure-commandline -g
- allure serve output/allure/
- robot -d ./logs --listener allure_robotframework specs/

## Resource

[QA Ninja](https://qaninja.academy/)
