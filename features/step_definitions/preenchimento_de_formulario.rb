#Cenario: cadastro de usuario 
Dado('que eu acesso o site de automação') do
    @preenchimento_de_formulario_Page = Cadastropage.new
    visit '/'
    click_on 'Começar Automação Web'
    
end  

Quando('eu clico em criar usuario') do
    @preenchimento_de_formulario_Page.clicando_em_formulario.click
    click_on 'Criar Usuários'
end  

Quando('preencho as minhas informações') do |table|
    register = table.rows_hash
    @preenchimento_de_formulario_Page.nome.set register[:nome]
    @preenchimento_de_formulario_Page.segundo_nome.set register[:segundo_nome]
    @preenchimento_de_formulario_Page.email.set register[:email]
    @preenchimento_de_formulario_Page.endereço.set register[:endereço]
    @preenchimento_de_formulario_Page.universidade.set register[:universidade]
    @preenchimento_de_formulario_Page.profissão.set register[:email]
    @preenchimento_de_formulario_Page.genero.set register[:genero]
    @preenchimento_de_formulario_Page.idade.set register[:idade] 
    @preenchimento_de_formulario_Page.botão_clicar.click
end

Então('eu realizo o cadastro da conta') do
    expect(page).to have_content("Usuário Criado com sucesso")
end

#Cenario: visualizar lista de usuarios 
Quando('eu clico na lista de usuarios') do
    visit '/'
    click_on 'Começar Automação Web'
    @preenchimento_de_formulario_Page.clicando_em_formulario.click
    click_on'Lista de Usuários'  
end

Então('eu visualizo todas as contas cadastradas') do
    expect(page).to have_content("Lista de Usuários!!")
end