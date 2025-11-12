*** Settings ***
Resource  resource.robot
Suite Setup  Run Keywords  Open And Configure Browser  Reset Counter To Zero
Suite Teardown  Close Browser

*** Test Cases ***
When counter has a nonzero value and it is reset the value becomes zero
    Go To  ${HOME_URL}
    Click Button  Paina
    Page Should Not Contain  nappia painettu 0 kertaa
    Click Button  Nollaa
    Page Should Contain  nappia painettu 0 kertaa
