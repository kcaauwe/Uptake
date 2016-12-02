
*** Settings ***
Documentation  site navigation verification using page object model
Library         Selenium2Library
Resource        ../Resources/page_verification_resources.robot
Test Teardown    Close Browser

*** Test Cases ***
SiteNavigationTest
    open site
    verify home page
    navigate to blog page
    navigate to people page







