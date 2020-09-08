*** Variables ***
${Api Key}  5c3845bbb4104a1a85ab8af2d45a00de


*** Keywords ***
Get from api
    ${response}=   Get   ${Api Key}
    Set Test Variable  ${response}

Status Code is
    [Arguments]  ${status}=${200}
    Should be Equal  ${response.status_code}  ${status}

Response text is
    [Arguments]  ${url}
    Should be equal  ${response.url}   ${url}