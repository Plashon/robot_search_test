*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${SEARCH_TERM}    robot framework
${SEARCH_TERM_2}    robot framework
${SEARCH_RESULT}    robot framework
${SEARCH_RESULT_2}   ภาษาไพทอน
${SEARCH_RESULT_3}   Robox

*** Test Cases ***
Search Google
    [Documentation]    Test case to search Google and verify results
    Open Google     
    Input Search Google Term
    Press Enter Google Search
    Verify Search Results
    Close Browser

Search Google 2
    [Documentation]    Test case to search Google and verify results
    Open Google     
    Input Search Google Term
    Press Enter Google Search
    Verify Search Results v2
    Close Browser

Search Google Xpath
    [Documentation]    Test case to search Google and verify results
    Open Google     
    Input Search Google Xpath Term
    Press Enter Google Xpath Search
    Verify Search Results v2
    Close Browser

Search Yahoo
    [Documentation]    Test case to search Yahoo and verify results
    Open Yahoo     
    Input Search Term
    Press Enter Yahoo Search
    Verify Search Results v3
    Close Browser

*** Keywords ***
Open Google
    Open Browser    https://www.google.com   ${BROWSER}

Open Yahoo
    Open Browser    https://search.yahoo.com/   ${BROWSER}

Input Search Google Term
    Input Text      name=q                 ${SEARCH_TERM}

Press Enter Google Search
    Press Keys     name=q    ENTER

Input Search Google Xpath Term
    Input Text      Xpath=//*[@id="APjFqb"]                ${SEARCH_TERM}

Press Enter Google Xpath Search
    Press Keys     Xpath=//*[@id="APjFqb"]   ENTER

Input Search Term
    Input Text      name=p                 ${SEARCH_TERM}

Press Enter Yahoo Search
    Press Keys     name=p    ENTER

Verify Search Results
    Wait Until Page Contains    ${SEARCH_TERM}
    Page Should Contain    ${SEARCH_RESULT}

Verify Search Results v2
    Wait Until Page Contains    ${SEARCH_TERM}
    Page Should Contain    ${SEARCH_RESULT_2}

Verify Search Results v3
    Wait Until Page Contains    ${SEARCH_TERM}
    Page Should Contain    ${SEARCH_RESULT_2}