*** Settings ***
Resource      ${EXECDIR}/PageObjects/Home.robot

*** Test Cases ***

Procced to buy a product
    Start app
    Wait Until Page Contains Element    //*[@name="Continue"]
    Click Element    //*[@name="Continue"]
    Wait Until Page Contains Element    accessibility_id=Continue
    Click Element    accessibility_id=Continue
    Wait Until Page Contains Element    accessibility_id=skip
    Click Element    accessibility_id=skip
    Wait Until Page Contains Element    accessibility_id=Got it
    Click Element    accessibility_id=Got it
    Wait Until Page Contains Element    accessibility_id=Shop all categories
    Click Element    accessibility_id=Shop all categories
    Wait Until Page Contains Element    accessibility_id=Home and Kitchen Appliances
    Click Element    accessibility_id=Home and Kitchen Appliances
    #Click Element    accessibility_id=see more
    sleep    1s
    Capture Page Screenshot
