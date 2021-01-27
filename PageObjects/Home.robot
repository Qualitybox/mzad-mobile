*** Settings ***
Resource                     Common.robot
Variables                    Webelements/Home.py

*** Variables ***
${remote_url}             https://${Device_provider_URL}/wd/hub

${Android_storage}        kobiton-store:v150141
${iOS_storage}            kobiton-store:v143736
${appPackageAndroid}      ${EMPTY}
${appPackageiOS}          com.MzadQatar.MzadQatar
${appActivity}            ${EMPTY}
${AllowPopupCap_iOS}      autoAcceptAlerts
${AllowPopupCap_Android}  autoGrantPermissions
&{mobileProperties}       deviceName=${device1}
...                       platformName=${platform}                
...                       language=${language}                    locale=${language}
...                       ${AllowPopupCap_${platform}}=true       phoneOnly=true
...                       app=${${platform}_storage}               deviceGroup=KOBITON
...                       groupId=1775                            sessionName=Appium test

*** Keywords ***

Start app
  [Documentation]                         This keyword used to opening customer application using the server url and mobile capabilities
  ...                                     and to verifying that it correctly launched
  [arguments]                             ${appID}=${EMPTY}
  Open Application                        remote_url=${remote_url}             &{mobileProperties}
  Wait Until Page Contains Element        //*[@name="Continue"]
  
