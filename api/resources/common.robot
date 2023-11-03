*** Keywords ***
Resposta deve ser OK
  [Arguments]   ${resposta}    
  Should Be Equal As Integers   ${resposta.status_code}   200

Pessoa deve conter campo idade
  [Arguments]   ${pessoa}
  Should Not Be Equal   ${pessoa['idade']}  ${EMPTY}

Pessoa deve ser do sexo Masculino
  [Arguments]   ${pessoa}
  Should Be Equal  ${pessoa['sexo']}  Masculino 

Pessoa nao deve ser do sexo Feminino
  [Arguments]   ${pessoa}
  Should Not Be Equal  ${pessoa['sexo']}  Feminino 

Validacao de CPF retorna Verdadeiro
  [Arguments]     ${cpf}    ${resposta}
  Should Be Equal       "${cpf} - Verdadeiro"   "${resposta}"

