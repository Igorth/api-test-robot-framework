# Robot Framework

Testing API Hot Peppers

# Install
- install python 3
- install Robot
- install Java
- install Node.js

# How To Run
- clone the repository
- cd to the directory

Show the logs
- robot -d ./logs specs/


You can run with the Allure cli
- npm install allure-commandline -g
- allure serve output/allure/
- robot -d ./logs --listener allure_robotframework specs/

