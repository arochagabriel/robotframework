***Settings***
Documentation                   Basic test
Library                         Selenium2Library

**Variables**
${BROWSER}                      chrome
${URL}                          https://google.cl 
${TEXTO_TO_SEARCH}              facebook
${EXPECTED_SEARCH}              Facebook - Inicia sesión o regístrate



***Test Cases*** 
User can use google to search facebook
    [Documentation]                       As I User I want to search facebook link using google
    open browser                          ${URL}  ${BROWSER} 
    wait until page contains              Google
    Input text                            name:q   ${TEXTO_TO_SEARCH} 
    Wait Until Element Is Visible         xpath://ul[@role='listbox']/li[1]/div/div[2]
    Click Element                         xpath://ul[@role='listbox']/li[1]/div/div[2]
    Element Text Should Be                //a[@href='https://es-la.facebook.com/']/h3  ${EXPECTED_SEARCH}
    close browser

**Keywords**

