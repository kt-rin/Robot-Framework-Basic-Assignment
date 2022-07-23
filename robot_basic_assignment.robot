*** Settings ***
Library    Selenium2Library
#Test Teardown    Close Browser


*** Variables ***
${browser}    chrome
${url}    file:///C:/Users/USER/Desktop/ep01/ep01_small_excercise.html


*** Test Cases***
Enter Form
    Open Chrome Browser
    Enter Username Password and Nickname
    Select Dropdown
    Check on Checkbox
    Click Finish Button


*** Keywords ***
Open Chrome Browser 
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Enter Username Password and Nickname
    Input Text    id=username-box    admin
    Sleep    0.5
    Input Text    xpath=//div[@v='password']/input    1234
    Sleep    0.5
    Input Text    xpath=//div//input[@doppio='nickname']    Call me
 
Select Dropdown
    Select From List By Value       xpath=//select[@id="company"]    doppio

Check on Checkbox
    Select Checkbox   id=op1 

Click Finish Button       
    Click Element     id=use-me
    #Click Button     id=use-me


