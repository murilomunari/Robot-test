*** Settings ***
Documentation   Essa suite testa o site da Amazon.com.br utilizando o Robot Framework.
Library         SeleniumLibrary
Resource        amazon_resources.robot
Test Setup      Abrir o navegador
Test Teardown   Fechar o navegador



*** Test Cases ***

Caso de Teste 01 - Acesso ao menu "Ofertas do Dia"
    [Documentation]    Teste de acesso ao menu "Ofertas do Dia" e "Cupons" na Amazon
    [Tags]             menus    ofertas_dia    cupons
    Acessar a home page do site Amazon.com.br
    Entrar no menu "Ofertas do Dia"
    Verificar se o título da página fica "Ofertas e Promoções | Amazon.com.br"
    Verificar se aparece a frase "Ofertas e Promoções"
    Entrar no menu "Cupons"
    


Caso de Teste 02 - Pesquisa de um Produto
    [Documentation]    Teste de pesquisa de um produto na Amazon
    [Tags]             busca_produtos  iphone_16    
    Acessar a home page do site Amazon.com.br
    Digitar o nome de produto "Iphone 16" no campo de pesquisa
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se esta listando o produto pesquisado

