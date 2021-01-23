*** Settings ***
Resource                     Common.robot
Variables                    Webelements/Home.py

*** Variables ***
${remote_url}             https://${Device_provider_URL}/wd/hub

${appPackageAndroid}      ${EMPTY}
${appPackageiOS}          com.MzadQatar.MzadQatar
${appActivity}            ${EMPTY}
${AllowPopupCap_iOS}      autoAcceptAlerts
${AllowPopupCap_Android}  autoGrantPermissions
&{mobileProperties}       deviceName=iPhone*
...                       platformName=${platform}                platformVersion=${platformVersion}
...                       language=${language}                    locale=${language}
...                       ${AllowPopupCap_${platform}}=true       phoneOnly=true
...                       app=kobiton-store:v143736               deviceGroup=KOBITON
...                       groupId=1775                            sessionName=Appium test

*** Keywords ***

Start app
  [Documentation]                         This keyword used to opening customer application using the server url and mobile capabilities
  ...                                     and to verifying that it correctly launched
  [arguments]                             ${appID}=${EMPTY}
  Open Application                          remote_url=${remote_url}             &{mobileProperties}
