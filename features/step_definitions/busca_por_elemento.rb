#Cenario: Validar que seja possivel clicar em links
Dado('que eu acesso o site') do
  @access = Buscaelementospage.new
  page.windows[0].maximize
  @access.load
end

Quando('clico em busca por elementos') do
  click_on'Começar Automação Web'
  visit '/buscaelementos/links'
end

Quando('clico em cada um dos links') do
  click_on 'Ok 200 - Sucess'                                #-->click link 1
  click_on 'Voltar'                                         
  click_on 'Erro 400 - Bad Request'                         #-->click link 2
  click_on 'Voltar'                                         
  click_on 'Erro 404 - Page not found'                      #-->click link 3 
  click_on 'Voltar'                                         
  click_on 'Erro 500 - Internal Server Error'               #-->click link 4
end

Então('sou direcionado ao respecitvo destino de cada um') do
  expect(page).to have_content('Internal Server Error!!')
end

#Cenario: Validar preenchimento em campos de texto
Quando('que eu clico em busca por elementos') do
  @access.load
  click_on 'Começar Automação Web'
end

Quando('clico em Inputs e TextField') do
  visit '/buscaelementos/inputsetextfield'
end

Quando('preencho os campos') do |table|
  value = table.rows_hash
  @access.nome.set          value[:nome        ]
  @access.ultimo_nome.set   value[:ultimo_nome ]
  @access.password.set      value[:password    ]
  @access.email.set         value[:email       ]
  @access.formulario.set    value[:formulario  ]
  sleep 1
end

Então('todos os campos são preenchidos com sucesso') do
  expect(page).to have_content 'Inputs'
end

#Cenario: Validar que seja possivel clicar nos botões
Quando('clico em botões') do
  visit '/buscaelementos/botoes' 
  @access.raised.click
  @access.floating.click
  @access.flat.click
  @access.submmit.click
  text 'Disable'                                      #-->Disable
end

Então('eu consigo clicar em todos os botões contidos na tela') do
  expect(page).to have_content('Você Clicou no Botão!')
end

#Cenario: Validar que seja possivel clicar em Radio e Checkbox
Quando('clico em Radio e Checkbox') do
  visit'/buscaelementos/radioecheckbox'
  choose('red',   allow_label_click: true)           #--> clico no RadioBox
  choose('yellow',allow_label_click: true)           #--> clico no RadioBox
  check('purple', allow_label_click: true)           #--> cico no CheckBox
end
Então('eu consigo clicar nos botões') do
  uncheck('white', allow_label_click: true)          #--> cico no CheckBox  
end

#Cenario: Validar click em dropdown e select
Quando('clico nos botões') do
  visit '/buscaelementos/dropdowneselect'
  @access.mail_Box.click
  @access.desenho_favorito.click 
  @access.first_name.click 
  @access.dragon_ball.click 
  @access.escolha_sua_opcao.click 
  @access.ronaldinho_gaucho.click 
  @access.mail_Box.click
  @access.pais.click 
  @access.brasil.click 
  @access.genero.click 
  page.execute_script "window.scrollBy(0,100)"
  @access.homem.click
  @access.browser_favorito.click
  select 'Chrome', from: 'dropdown'
end

Então('eu consigo clico em dropdown e select') do
end

#Cenario: Validar busca por texto 
Quando('clico em buscar por texto') do
  visit '/buscaelementos/textos' 

  text 'Debugando com ByeByug.
  Você já passou pela situação de não estar conseguindo 
  rodar um comando em testes, por algum motivo de elemento    
  mapeado errado entre outras situaçōes. E ter que rodar
  seus testes de novo para ver se conseguiu mapear correto 
  ou se funcionou o comando que você inseriu?'                            #--> Busca por texto

  text 'Integração contínua com Codeship
  Mas primeiro vamos falar o que é a integração contínua? 
  A integração contínua é uma prática de desenvolvimento 
  de software de DevOps em que os desenvolvedores, com frequência, 
  juntam suas alterações de código em um repositório central. Depois 
  disso, criações e testes são executados. Geralmente, a integração 
  contínua se refere ao estágio de criação ou integração do processo 
  de lançamento de software, além de originar um componente de 
  automação (ex.: uma CI ou serviço de criação) e um componente 
  cultural (ex.: aprender a integrar com frequência).'                 #--> Busca por texto
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