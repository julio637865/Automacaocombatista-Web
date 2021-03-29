#Cenario: Clicando em alert  
Dado('que eu acesso o site automação') do 
    @mudanca_de_foco_Page = Mudancadefocopage.new
    visit '/mudancadefoco/alert'
    @mudanca_de_foco_Page.clica_js_alert.click          
    page.accept_alert                                    # -> Clica em alerts 
    @mudanca_de_foco_Page.clica_js_confirm.click       
    page.accept_alert                                    # -> Clica em alerts
    @mudanca_de_foco_Page.clica_js_prompt.click   
    page.driver.browser.switch_to.alert.accept           # -> Clica em alerts com texto
end
Quando('eu clico em mudança de foco') do 
end
Quando('clico em algum botão') do
end
Então('eu consigo clicar nos botões da tela') do
end

#Cenario: Clicando em botões infra
Quando('clico em botões iframe') do 
    visit '/mudancadefoco/iframe'
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
