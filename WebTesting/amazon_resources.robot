*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}     https://www.amazon.com.br


*** Keywords ***
Abrir o navegador
    Open Browser    ${URL}    browser=chrome


Fechar o navegador
    Close Browser

Acessar a home page do site Amazon.com.br
    Open Browser    ${URL}    chrome
    Maximize Browser Window

Entrar no menu "Ofertas do Dia"
    Click Link    xpath=//a[contains(text(), 'Ofertas do Dia')]

Verificar se o título da página fica "Ofertas e Promoções | Amazon.com.br"
    Title Should Be    Ofertas e Promoções | Amazon.com.br

Verificar se aparece a frase "Ofertas e Promoções"
    Page Should Contain    Ofertas e Promoções

Verificar se aparece a categoria "Para Você"
    Page Should Contain    Para Você

Digitar o nome de produto "Iphone 16" no campo de pesquisa
    Input Text    id=twotabsearchtextbox    Iphone 16

Clicar no botão de pesquisa
    Click Button    id=nav-search-submit-button

Verificar o resultado da pesquisa se esta listando o produto pesquisado
    Page Should Contain    Iphone 16