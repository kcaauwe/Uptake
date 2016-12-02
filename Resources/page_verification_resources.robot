*** Variables ***
${Browser}    chrome
${SiteUrl}    https://uptake.com/
${Title}    Uptake – Analytics for the Industrial Internet
${PeopleHeader}    We're building a company that values curiosity, exploration and industry.
${BlogTitle}    Data, design, technology and culture at
${WaitTime}    10
${PeopleLink}    xpath=//*[@id="menu-item-4162"]/a
${BlogLink}    xpath=//*[@id="menu-item-4166"]/a

*** Keywords ***
Open Site
    open browser    ${SiteUrl}    ${Browser}
    maximize browser window
    wait until page contains    ${Title}

Verify Home Page
    title should be     ${Title}

Navigate to People Page
    click element    ${PeopleLink}
    wait until page contains    ${PeopleHeader}    ${WaitTime}
    go back
    verify home page

Navigate to Blog Page
    click element    ${BlogLink}
    wait until page contains    ${BlogTitle}   ${WaitTime}
    go back
    verify home page

