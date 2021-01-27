*** Settings ***
Resource      ${EXECDIR}/PageObjects/Home.robot

*** Test Cases ***

Connect user
    Start app
    Wait Until Page Contains Element    //*[@name="استمرار" or @name="Continue"]
    Click Element    //*[@name="استمرار" or @name="Continue"]
    Wait Until Page Contains Element    accessibility_id=Continue
    Click Element    accessibility_id=Continue
    Wait Until Page Contains Element    accessibility_id=skip
    Click Element    accessibility_id=skip
    Wait Until Page Contains Element    accessibility_id=Got it
    Click Element    accessibility_id=Got it
    Wait Until Page Does Not Contain Element    accessibility_id=Got it
    Click Element    accessibility_id=Chat
    Wait Until Element Is Visible    //*[@value="Enter your mobile number"]
    Input Text    //*[@value="Enter your mobile number"]    12332112
    Click Element   accessibility_id=Next
    #654321
    Fill code    654324
    Sleep    1s
    Capture Page Screenshot 








*** Keywords ***

Fill code
    [Arguments]    ${password}
    Wait Until Element Is Visible    accessibility_id=6    20s
    ${Length} =     Get Length    ${password}
    FOR    ${i}    IN RANGE    ${Length}
        ${next} =    evaluate    ${i}+1
        ${digit} =    Get Substring    ${password}    ${i}    ${next}
        LOG    ${digit}
        Click Element    accessibility_id=${digit}
    END
    Wait Until Page Contains Element    accessibility_id=Chats
