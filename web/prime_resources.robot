*** Settings ***
Library     SeleniumLibrary
Library     FakerLibrary
Library     String
Library    OperatingSystem
Library    Screenshot
Resource    prime_variaveis.robot

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome

Fechar o navegador
    Close Browser

Estou na pagina do opensource
    Acessar a pagina opensource
    entrar com login e senha


Acessar a pagina opensource
    Go To    ${Url}
    Wait Until Element Is Enabled    locator=${Login_Usuario}

entrar com login e senha
    digite o login
    ditite a senha
    Confirmar login

digite o login
    Wait Until Element Is Enabled    ${Login_Usuario}
    Input Text   ${Login_Usuario}   Admin

ditite a senha
    Wait Until Element Is Enabled    ${Login_Senha}
    Input Text    ${Login_Senha}    admin123

Confirmar login
    Wait Until Element Is Enabled    ${Login_Btnacessar}
    Click Element    ${Login_Btnacessar}

acessar o menu my informações
    Wait Until Element Is Enabled    ${menu_myInfo}
    Click Element    ${menu_myInfo}

preencher os campos
    Digite o nome completo
    Sleep    .25s
    Digite o apelido
    Sleep    .25s
    Informe o Id do colaborador
    Sleep    .25s
    Informo Outro ID
    Sleep    .25s
    Digito o numero cart motorista
    Sleep    .25s
    Digito a data de validade cart motorista
    Sleep    .25s
    Digito o numero do SSN
    Sleep    .25s
    Digito o numero do SIN
    Sleep    .25s
    Digito a Nacionalidade
    Sleep    .25s
    Qual o estado civil
    Sleep    .25s
    Informe a data de nascimento
    Sleep    .25s
    Informe o Genero
    Sleep    .25s
    Digite o num cart militar
    Sleep    .25s
    Marque o campo se for fumante
    Sleep    .25s
    Salvar o primeiro bloco
    Sleep    .25s
    Selecione o tipo sanguineo
    Sleep    .25s
    Salvar o segundo bloco
    Sleep    .25s
    add um anexo

Digite o nome completo
    Digite o primeiro nome
    Digite o segundo nome
    Digite o ultimo nome

Digite o primeiro nome
    Wait Until Element Is Enabled    ${inp_primeironome}
    ${Faker_nome}        FakerLibrary.Name Nonbinary
    Limpar Campo     ${inp_primeironome}
    Sleep    .25s
    Input Text    ${inp_primeironome}    ${Faker_nome}     

Digite o segundo nome
    Wait Until Element Is Enabled    ${nome do meio}
    ${Faker.nomeM}        FakerLibrary.Last Name
    Limpar Campo     ${nome do meio}
    Sleep    .25s
    Input Text    ${nome do meio}    ${Faker.nomeM}

Digite o ultimo nome
    Wait Until Element Is Enabled    ${ultimo nome}
    ${Faker.nomeU}        FakerLibrary.First Name
    Limpar Campo     ${ultimo nome}
    Sleep    .25s
    Input Text    ${ultimo nome}    ${Faker.nomeU}

Digite o apelido
    Wait Until Element Is Enabled    ${inp_nickname}
    ${Faker.apelido}       FakerLibrary.Name
    Limpar Campo     ${inp_nickname}
    Sleep    .25s
    Input Text    ${inp_nickname}    ${Faker.apelido} 

Informe o Id do colaborador
    Wait Until Element Is Enabled    ${employeeId}
    ${Num_id}    Generate Random String    10    [NUMBERS]
    Limpar Campo     ${employeeId}
    Sleep    .25s
    Input Text    ${employeeId}    ${Num_id}

Informo Outro ID
    Wait Until Element Is Enabled    ${OtherId}
    ${outro_id}    Generate Random String    10    [NUMBERS]
    Limpar Campo     ${OtherId}
    Sleep    .25s
    Input Text    ${OtherId}    ${outro_id}

Digito o numero cart motorista
    Wait Until Element Is Enabled    ${CartMotorista}
    ${cartMoto}    Generate Random String    10    [NUMBERS]
    Limpar Campo     ${CartMotorista}
    Sleep    .25s
    Input Text    ${CartMotorista}    ${cartMoto}

Digito a data de validade cart motorista
    Wait Until Element Is Enabled    ${dtVencCarteira}
    ${Faker.data}        FakerLibrary.Date
    Limpar Campo     ${dtVencCarteira}
    Sleep    .25s
    Input Text    ${dtVencCarteira}    ${Faker.data} 
    Press Keys                None    TAB

Digito o numero do SSN
    Wait Until Element Is Enabled    ${ssnNumero}
    ${ssn}    Generate Random String    5    [NUMBERS]
    Limpar Campo     ${ssnNumero}
    Sleep    .25s
    Input Text    ${ssnNumero}    ${ssn}

Digito o numero do SIN
    Wait Until Element Is Enabled    ${sinNumero}
    ${sin}    Generate Random String    5    [NUMBERS]
    Limpar Campo     ${sinNumero}
    Sleep    .25s
    Input Text    ${sinNumero}    ${sin}

Digito a Nacionalidade
    Clicar em randomico na lista  ${Nacionalidade}

Qual o estado civil
    Clicar em randomico na lista  ${Estcivil}

Informe a data de nascimento
    Wait Until Element Is Enabled    ${dtnascimento} 
    ${Faker.dataNas}        FakerLibrary.Date
    Limpar Campo     ${dtnascimento}
    Sleep    .25s
    Input Text    ${dtnascimento}    ${Faker.dataNas} 

Informe o Genero
    @{generos}=       Get WebElements   css:.oxd-radio-wrapper label
    Sleep   2s

    ${selecionado}=   Evaluate        random.choice($generos)
    Sleep   1s

    Click Element     ${selecionado}


Digite o num cart militar
    Wait Until Element Is Enabled    ${ServicoMilitar}
    ${Num_militar}    Generate Random String    8    [NUMBERS]
    Limpar Campo     ${ServicoMilitar}
    Sleep    .25s
    Input Text    ${ServicoMilitar}    ${Num_militar}

Marque o campo se for fumante
    Wait Until Element Is Enabled    ${fumante}
    Click Element   ${fumante}

Salvar o primeiro bloco
    Wait Until Element Is Enabled    ${salvar1}
    Click Element    ${salvar1}


Selecione o tipo sanguineo
    Clicar em randomico na lista  ${tipoSanguinio}

Salvar o segundo bloco
    Wait Until Element Is Enabled    ${salvar2}
    Click Element    ${salvar2}    

add um anexo
    Clico no botao anexar
    Sleep  5s
    Inserir o arquivo
    Sleep  5s

Clico no botao anexar
    Wait Until Element Is Enabled    ${btn_addAnexo}
    Click Element    ${btn_addAnexo}

Inserir o arquivo
    Wait Until Element Is Enabled    ${input_fileAnexo}
    Choose File      ${input_fileAnexo}    ${CURDIR}/primefoto.jpg
    Sleep  5s

clicar no salvar
    Wait Until Element Is Enabled    ${btn_salvar3}
    Click Element    ${btn_salvar3}
    Sleep     1s

vejo a mensagem de "${parametro}"
   Wait Until Element Is Enabled  ${toast_message}
   ${mensagem} =    Get Text    ${toast_message}
   Should Be Equal    ${mensagem}    ${parametro}

###  Função ###
Clicar em randomico na lista
  [Arguments]   ${Elemento}
  Wait Until Element Is Enabled    ${Elemento}
  Sleep   1s
  Click Element   ${Elemento}
  Sleep   1s

  Wait Until Element Is Enabled       css:.oxd-select-dropdown
  Sleep   1s
  @{elementos}=     Get WebElements   css:.oxd-select-dropdown .oxd-select-option span
  ${elemento}=         Evaluate          random.choice($elementos)

  Click Element     ${elemento}
  Sleep   1s

Limpar Campo
  [Arguments]   ${Elemento}
  Wait Until Element Is Enabled    ${Elemento}
  Click Element           ${Elemento}
  Press Keys                None   CTRL+A  
  Press Keys                None    BACKSPACE    

