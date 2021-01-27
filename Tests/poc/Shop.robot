*** Settings ***
Resource      ${EXECDIR}/PageObjects/Home.robot

*** Test Cases ***

Procced to Select a product from shop
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
    Wait Until Page Contains Element    Bosch Vacuum Cleaner wet/dry -1380W
    Click Element    Bosch Vacuum Cleaner wet/dry -1380W
    #Wait Until Page Contains Element    //*[@name="Buy item"]
    #Click Element    //*[@name="Buy item"]

    sleep    1s
    Capture Page Screenshot

