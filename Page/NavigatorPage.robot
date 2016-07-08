*** Variables ***
${TOP_LOGO_IMAGE_LOCATOR}    ${EMPTY}

*** Keywords ***
Is Top Logo Image Visible

Wait Top Logo Image
    Wait Until Page Contains Element    //img[@src='images/logo.gif']    1000
