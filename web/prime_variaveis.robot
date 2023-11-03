*** Variables ***
${Url}        https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

${Login_Usuario}            //input[@name='username']
${Login_Senha}              //input[@name='password']
${Login_Btnacessar}         css:.orangehrm-login-action button
${Home_Dashbord}            css:a[href="/web/index.php/dashboard/index"]
${menu_myInfo}              css:a[href="/web/index.php/pim/viewMyDetails"]

### Personal Details ###
${inp_primeironome}       dom:document.querySelectorAll('form .oxd-input.oxd-input')[0]
${nome do meio}           dom:document.querySelectorAll('form .oxd-input.oxd-input')[1]
${ultimo nome}            dom:document.querySelectorAll('form .oxd-input.oxd-input')[2]
${inp_nickname}           dom:document.querySelectorAll('form .oxd-input.oxd-input')[3]
${employeeId}             dom:document.querySelectorAll('form .oxd-input.oxd-input')[4]
${OtherId}                dom:document.querySelectorAll('form .oxd-input.oxd-input')[5]
${CartMotorista}          dom:document.querySelectorAll('form .oxd-input.oxd-input')[6]
${dtVencCarteira}         dom:document.querySelectorAll('form .oxd-input.oxd-input')[7]
${ssnNumero}              dom:document.querySelectorAll('form .oxd-input.oxd-input')[8]
${sinNumero}              dom:document.querySelectorAll('form .oxd-input.oxd-input')[9]
${Nacionalidade}          dom:document.querySelectorAll('form .oxd-select-text-input')[0]
${Estcivil}               dom:document.querySelectorAll('form .oxd-select-text-input')[1]
${dtnascimento}           dom:document.querySelectorAll('form .oxd-input.oxd-input')[10]
${ServicoMilitar}         dom:document.querySelectorAll('form .oxd-input.oxd-input')[11]
${fumante}                dom:document.querySelectorAll('form .oxd-checkbox-input-icon')[0]
${salvar1}                dom:document.querySelectorAll('form button[type="submit"]')[0]

### Custom Fields ###
${tipoSanguinio}          dom:document.querySelectorAll('form .oxd-select-text-input')[2]
${salvar2}                dom:document.querySelectorAll('form button[type="submit"]')[1]

### Add Attachment ###
${btn_addAnexo}           css:div.orangehrm-attachment button > i.bi-plus.oxd-button-icon
${File}                   C:\\Users\\felip\\Prime\\webtesting\\primefoto.jpg
${input_fileAnexo}        dom:document.querySelectorAll('form input[type="file"].oxd-file-input')[0]
${ipt_comentario}         dom:document.querySelectorAll('form textarea')[0]
${btn_salvar3}            dom:document.querySelectorAll('form button[type="submit"]')[2]

${toast_title}            css:p.oxd-text--toast-title
${toast_message}          css:p.oxd-text--toast-message
