*** Settings ***
Library             Selenium2Library
Suite Setup			Access Page
Suite Teardown 		Close Browsers

*** Variables ***
${url}=         https://donations.dashboardphilippines.com/
${browser}=     chrome

*** Test Cases ***
Check if in homepage
	Page Should Contain     Donation Hub


*** Keywords ***
Access Page
	Open Browser    		${url}					browser=${browser}
Close Browsers
	Close All Browsers