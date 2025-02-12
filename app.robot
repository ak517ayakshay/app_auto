*** Settings ***
Library  AppiumLibrary
*** Variables ***
${PLATFORM}  Android
${DEVICE}  RZCX40PVP5R
${OS_VERSION}  14
${DRIVER}  Appium
${APP_FILE}  Users/akshaykumar/Downloads/fabric-6.21-latest-debug.apk
${PACKAGE}  com.practo.fabric
${MAIN_ACTIVITY}  LauncherAlias
${USER_EMAIL}  testaky195@gmail.com
${USER_PASSWORD}  P@ssw0rd@akshay
${TROUBLE}  com.practo.fabric:id/login_help
${EMAIL_CLICK}  com.practo.fabric:id/card_button
${SIGN}  com.practo.fabric:id/continue_button
${SEARCH}  //android.view.ViewGroup[@content-desc="Skin & Hair"]/android.widget.TextView
${BOOKK}  //android.view.View[@content-desc="Book In-clinic Appointment. Book an appointment with a top dermatologist in Koramangala, Bangalore"]
${DOCTOR_NAME}  com.practo.fabric:id/text_view_doctor_name
${VIEW}  com.practo.fabric:id/text_view_all_slots
${SLOT}  com.practo.fabric:id/slot_info
*** Test Cases ***
Book Dermatology Appointment
  Launch Practo App
  User Login
*** Keywords ***
Launch Practo App
  Open Application  http://localhost:4723/wd/hub
  ...  platformName=${PLATFORM}
  ...  deviceName=${DEVICE}
  ...  platformVersion=${OS_VERSION}
  ...  automationName=UiAutomator2
  ...  app=${APP_FILE}
  ...  appPackage=${PACKAGE}
  ...  appActivity=${MAIN_ACTIVITY}
  ...  noReset=${TRUE}
User Login
  Wait Until Element Is Visible  ${TROUBLE}
  Click Element  ${TROUBLE}
  Wait Until Element Is Visible  ${EMAIL_CLICK}
  Click Element  ${EMAIL_CLICK}
  Input Text  com.practo.fabric:id/email_edit_text  ${USER_EMAIL}
  Input Text  com.practo.fabric:id/password_edit_text  ${USER_PASSWORD}
  Wait Until Element Is Visible  ${SIGN}
  Click Element  ${SIGN}
  Wait Until Page Contains Element  ${SEARCH}
  Click Element  ${SEARCH}
  Wait Until Element Is Visible  ${BOOKK}
  Click Element  ${BOOKK}
  Wait Until Element Is Visible  ${DOCTOR_NAME}
  Click Element  ${DOCTOR_NAME}
  Wait Until Element Is Visible  ${DOCTOR_NAME}
  Click Element  ${DOCTOR_NAME}
  Wait Until Element Is Visible  ${VIEW}
  Click Element  ${VIEW}
  Wait Until Element Is Visible  ${SLOT}
  Click Element  ${SLOT}
Exit App
  Close Application
