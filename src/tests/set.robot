*** Settings ***
Resource  resource.robot
Suite Setup  Run Keywords  Open And Configure Browser  Reset Counter To Zero
Suite Teardown  Close Browser

*** Test Cases ***
Set value sets value to given number
    Go To  ${HOME_URL}
    Input Text  value  10
    Click Button  Aseta
    Page Should Contain  nappia painettu 10 kertaa
