#Cenario: Validar que seja possivel clicar em links
Dado('que eu acesso o site') do
  visit '/'
  @busca_por_elemento_Page = Buscaelementospage.new
end

Quando('clico em busca por elementos') do
  click_on'Começar Automação Web'
  visit '/buscaelementos/links'
end

Quando('clico em cada um dos links') do
  click_on 'Ok 200 - Sucess'                          #click no primeiro link 
  click_on 'Voltar'                                   #click em Voltar
  click_on 'Erro 400 - Bad Request'                   #click no segundo link
  click_on 'Voltar'                                   #click em voltar 
  click_on 'Erro 404 - Page not found'                #click no terceiro link
  click_on 'Voltar'                                   #click no voltar
  click_on 'Erro 500 - Internal Server Error'         #click no quarto link
end

Então('sou direcionado ao respecitvo destino de cada um') do
  expect(page).to have_content('Internal Server Error!!')
  click_on 'Voltar'
end

#Cenario: Validar preenchimento em campos de texto
Quando('que eu clico em busca por elementos') do
  visit '/'
  click_on'Começar Automação Web'
end

Quando('clico em Inputs e TextField') do
  visit '/buscaelementos/inputsetextfield'
end

Quando('preencho os campos') do |table|
  register = table.rows_hash
  find('#first_name').set register [:Nome       ]     #Nome 
  find('#last_name').set register  [:Ultimo_nome]     #Ultimo nome
  find('#password').set register   [:Password   ]     #Senha
  find('#email').set register      [:Email      ]     #Email
  find('#textarea1').set register  [:Formulario ]     #Preenchimenti de formulario
  click_on 'Voltar'
  sleep 1
end

Então('todos os campos são preenchidos com sucesso') do
  expect(page).to have_content('Bem vindo ao Site de Automação do Batista.')
end

#Cenario: Validar que seja possivel clicar nos botões
Quando('clico em botões') do
  visit '/buscaelementos/botoes' 
  find('a[id="teste"]').click                         #Raised
  find('i[class="material-icons"]').click             #Floating
  find('a[onclick="ativaedesativa3()"]').click        #Flat
  find('button[onclick="ativaedesativa4()"]').click   #Submmit
  text 'Disable'                                      #Disable
end

Então('eu consigo clicar em todos os botões contidos na tela') do
  expect(page).to have_content('Você Clicou no Botão!')
  click_on 'Voltar'
end

#Cenario: Validar que seja possivel clicar em Radio e Checkbox
Quando('clico em Radio e Checkbox') do
  visit '/buscaelementos/radioecheckbox'
  choose('red',   allow_label_click: true)            #clico no RadioBox
  choose('yellow',allow_label_click: true)            #clico no RadioBox
  check('purple', allow_label_click: true)            #cico no CheckBox
  uncheck('black', allow_label_click:true)            #cico no CheckBox  
end

Então('eu consigo clicar nos botões') do
  click_on 'Voltar'
  expect(page).to have_content ('Bem vindo ao Site de Automação do Batista.')
end



#Cenario: Validar click em dropdown e select
Quando('clico nos botões') do
  visit '/buscaelementos/dropdowneselect'
  @busca_por_elemento_Page.mail_Box.click
  @busca_por_elemento_Page.desenho_favorito.click 
  @busca_por_elemento_Page.first_name.click 
  @busca_por_elemento_Page.dragon_ball.click 
  @busca_por_elemento_Page.escolha_sua_opcao.click 
  @busca_por_elemento_Page.ronaldinho_gaucho.click 
end

Então('eu consigo clico em dropdown e select') do
end