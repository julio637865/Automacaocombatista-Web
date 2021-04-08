#Cenario: Validar que seja possivel clicar em links
Dado('que eu acesso o site') do
  @acess = Buscaelementospage.new
  page.windows[0].maximize
  @acess.load
end

Quando('clico em busca por elementos') do
  click_on'Começar Automação Web'
  visit '/buscaelementos/links'
end

Quando('clico em cada um dos links') do
  click_on 'Ok 200 - Sucess'                          #click link 1
  click_on 'Voltar'                                   
  click_on 'Erro 400 - Bad Request'                   #click link 2
  click_on 'Voltar'                                   
  click_on 'Erro 404 - Page not found'                #click link 3 
  click_on 'Voltar'                                   
  click_on 'Erro 500 - Internal Server Error'         #click link 4
end

Então('sou direcionado ao respecitvo destino de cada um') do
  expect(page).to have_content('Internal Server Error!!')
end

#Cenario: Validar preenchimento em campos de texto
Quando('que eu clico em busca por elementos') do
  visit '/'
  click_on 'Começar Automação Web'

end
Quando('clico em Inputs e TextField') do
  visit '/buscaelementos/inputsetextfield'
end

Quando('preencho os campos') do |table|
  register = table.rows_hash
  find('#first_name').set register [:Nome       ]
  find('#last_name').set  register [:Ultimo_nome]
  find('#password').set   register [:Password   ]
  find('#email').set      register [:Email      ] 
  find('#textarea1').set  register [:Formulario ]
  sleep 1
end

Então('todos os campos são preenchidos com sucesso') do
  expect(page).to have_content 'Inputs'
end

#Cenario: Validar que seja possivel clicar nos botões
Quando('clico em botões') do
  visit '/buscaelementos/botoes' 
  @acess.raised.click
  @acess.floating.click
  @acess.flat.click
  @acess.submmit.click
  text 'Disable'                                      #Disable
end

Então('eu consigo clicar em todos os botões contidos na tela') do
  expect(page).to have_content('Você Clicou no Botão!')
end

#Cenario: Validar que seja possivel clicar em Radio e Checkbox
Quando('clico em Radio e Checkbox') do
  visit '/buscaelementos/radioecheckbox'
  choose('red',   allow_label_click: true)            #clico no RadioBox
  choose('yellow',allow_label_click: true)            #clico no RadioBox
  check('purple', allow_label_click: true)            #cico no CheckBox
end
Então('eu consigo clicar nos botões') do
  uncheck('white', allow_label_click: true)           #cico no CheckBox  
end

#Cenario: Validar click em dropdown e select
Quando('clico nos botões') do
  visit '/buscaelementos/dropdowneselect'
  @acess.mail_Box.click
  @acess.desenho_favorito.click 
  @acess.first_name.click 
  @acess.dragon_ball.click 
  @acess.escolha_sua_opcao.click 
  @acess.ronaldinho_gaucho.click 
  @acess.mail_Box.click
  @acess.pais.click 
  @acess.brasil.click 
  @acess.genero.click 
  page.execute_script "window.scrollBy(0,100)"
  @acess.homem.click
  @acess.browser_favorito.click
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