*** Settings ***
Library     RequestsLibrary
Resource    ../resources/config.robot
Resource    ../resources/common.robot
Resource    ../resources/api-resource.robot

*** Variables ***
${CPF}

*** Keywords ***
Setar CPF
  [Arguments]   ${novoCPF}
  Set Global Variable   $CPF  ${novoCPF}

*** Test Cases ***
Gerar Pessoa
    ${pessoa}=  Devo gerar pessoa aleatoria

    Pessoa deve conter campo idade  ${pessoa}
    Pessoa deve ser do sexo Masculino   ${pessoa}
    Pessoa nao deve ser do sexo Feminino  ${pessoa}

    Setar CPF   ${pessoa['cpf']}

Validar CPF da Pessoa
    ${resposta}=  Deve consultar se Cpf e Valido  ${CPF}

    Validacao de CPF retorna Verdadeiro   ${CPF}  ${resposta} 

    Setar CPF   ${EMPTY}
