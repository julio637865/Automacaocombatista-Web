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
  uncheck('white', allow_label_click: true)           #cico no CheckBox  
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
  @busca_por_elemento_Page.mail_Box.click
  @busca_por_elemento_Page.pais.click 
  @busca_por_elemento_Page.brasil.click 
  @busca_por_elemento_Page.genero.click 
  page.execute_script "window.scrollBy(0,100)"
  @busca_por_elemento_Page.homem.click
  @busca_por_elemento_Page.browser_favorito.click
  select 'Chrome', from: 'dropdown'
  
  
end

Então('eu consigo clico em dropdown e select') do
  click_on 'Voltar'
  expect(page).to have_content ('Bem vindo ao Site de Automação do Batista.')
end

#Cenario: Validar busca por texto 
Quando('clico em buscar por texto') do
 visit '/buscaelementos/textos' 

 text 'Debugando com ByeByug.
 Você já passou pela situação de não estar conseguindo 
 rodar um comando em testes, por algum motivo de elemento 
 mapeado errado entre outras situaçōes. E ter que rodar
 seus testes de novo para ver se conseguiu mapear correto 
 ou se funcionou o comando que você inseriu?'

 text 'Integração contínua com Codeship
 Mas primeiro vamos falar o que é a integração contínua? 
 A integração contínua é uma prática de desenvolvimento 
 de software de DevOps em que os desenvolvedores, com frequência, 
 juntam suas alterações de código em um repositório central. Depois 
 disso, criações e testes são executados. Geralmente, a integração 
 contínua se refere ao estágio de criação ou integração do processo 
  de lançamento de software, além de originar um componente de 
  automação (ex.: uma CI ou serviço de criação) e um componente 
  cultural (ex.: aprender a integrar com frequência).'
 
end

Então('eu visualizo os textos que busquei') do

end

#Cenario: interagindo com tebelas 
Quando('clico em uma tabela') do
  visit '/buscaelementos/table' 
  text 'Arroz'
  text '1'
  text '$2.87'
  text 'Feijão'
  text '2'
  
end

Então('eu visualizo dados dessa tabela') do
  text '$3.76'
end