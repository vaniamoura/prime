*** Settings ***
Resource          prime_resources.robot

Test Setup        Abrir o navegador
Test Teardown     Fechar o navegador


*** Test Cases ***
Cenario 1:Realizar a alteração do cadastro
    [Tags]    alteracao_web
    Estou na pagina do opensource
    acessar o menu my informações
    Sleep   3s
    preencher os campos
    clicar no salvar
    vejo a mensagem de "Successfully Saved"
