#Cenario: Clicando em alert  
Dado('que eu acesso o site automação') do 
  @acess = Mudancadefocopage.new
  @acess.load
  click_on 'Começar Automação Web'
end

Quando('eu clico em mudança de foco') do 
end

Quando('clico em algum botão') do
  @acess.clico_em_mudanca_de_foco.click
  @acess.clico_em_alert.click
  @acess.clica_js_alert.click          
  page.accept_alert                                    # -> Clica em alerts 
  @acess.clica_js_confirm.click       
  page.accept_alert                                    # -> Clica em alerts
  @acess.clica_js_prompt.click   
  page.driver.browser.switch_to.alert.accept           # -> Clica em alerts com texto
end
Então('eu consigo clicar nos botões da tela') do
end

#Cenario: Clicando em botões infra
Quando('clico em botões iframe') do 
  @acess.clico_em_mudanca_de_foco.click
  @acess.clico_em_iframe.click
  within_frame('id_do_iframe') do 
  fill_in(id:'first_name', with:                  'Julio')
  fill_in(id:'last_name',  with:                 'Santos')
  fill_in(id:'first_name', with:                  'Julio')
  fill_in(id:'password',   with:              '987654321')
  fill_in(id:'email',      with:   'julioteste@gmail.com')
  fill_in(id:'textarea1',  with: 'descrição da automação')
  end
end
  
Então('eu consigo preencher campos no iframe') do
  expect(page).to have_content 'Trabalhando com Iframe'
end

#Cenario: Validar que seja aberta uma nova aba 
Quando('clico em abrir uma janela') do
  visit 'mudancadefoco/janela'
  janela = window_opened_by do
  click_link 'Clique aqui' 
end 
  
  within_window janela do

  expect(current_url).to eq 'https://automacaocombatista.herokuapp.com/mudancadefoco/newwindow'
  @mensagem = find('.red-text.text-darken-1.center')
  expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'
  end 
end

Então('é aberto uma nova aba no navegador') do
end 

#Cenario: Validar que seja aberta clique em modal 
Quando('clico em modal') do
  visit '/mudancadefoco/modal'
  @acess.clico_em_abrir.click
end

Então('eu vejo o modal') do
  expect(page).to have_content 'Modal Teste'
end

