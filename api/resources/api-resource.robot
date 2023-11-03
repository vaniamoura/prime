*** Settings ***
Library     RequestsLibrary

*** Keywords ***
Devo gerar pessoa aleatoria
  ${data}=   Set Variable   acao=gerar_pessoa&pontuacao=N&sexo=H&txt_qtde=1
  ${headers}  Create Dictionary   Content-type=application/x-www-form-urlencoded 

  ${response}    POST    ${baseURL}   headers=${headers}   data=${data} 

  Resposta deve ser OK  ${response}

  @{pessoas}=   Set Variable     ${response.json()}

  ${pessoa}=    Set Variable     ${pessoas}[0]

  Return From Keyword   ${pessoa}

Deve consultar se Cpf e Valido
  [Arguments]   ${cpfParaConsulta}

  ${data}=   Set Variable   acao=validar_cpf&txt_cpf=${cpfParaConsulta}
  ${headers}  Create Dictionary   Content-type=application/x-www-form-urlencoded 

  ${response}    POST    ${baseURL}   headers=${headers}   data=${data} 

  Return From Keyword     ${response.text}

