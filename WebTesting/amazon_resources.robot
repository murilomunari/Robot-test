*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://www.amazon.com.br/

*** Keywords ***
Abrir o navegador
    Open Browser    ${URL}    browser=chrome
    Maximize Browser Window
    Sleep    3s

Fechar o navegador
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    ${URL}
    Maximize Browser Window
    Sleep    3s

Entrar no menu "Ofertas do Dia"
    Wait Until Element Is Visible    xpath=//a[contains(text(), 'Ofertas do Dia')]    timeout=10s
    Click Element    xpath=//a[contains(text(), 'Ofertas do Dia')]
    Sleep    3s

Entrar no menu "Cupons"
    Wait Until Element Is Visible    xpath=//button[contains(text(), 'Cupons')]    timeout=10s
    Click Element    xpath=//button[contains(text(), 'Cupons')]
    Sleep    3s

Verificar se o título da página fica "Ofertas e Promoções | Amazon.com.br"
    Title Should Be    Ofertas e Promoções | Amazon.com.br

Verificar se aparece a frase "Ofertas e Promoções"
    Page Should Contain    Ofertas e Promoções

Digitar o nome de produto "Iphone 16" no campo de pesquisa
    Wait Until Element Is Visible    id=twotabsearchtextbox    timeout=10s
    Input Text    id=twotabsearchtextbox    Iphone 16

Clicar no botão de pesquisa
    Wait Until Element Is Visible    id=nav-search-submit-button    timeout=10s
    Click Button    id=nav-search-submit-button

Verificar o resultado da pesquisa se esta listando o produto pesquisado
    Page Should Contain    Iphone 16
