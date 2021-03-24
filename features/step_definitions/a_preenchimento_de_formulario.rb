Dado('que eu acesso o site de automação') do
    visit '/'
    click_on 'Começar Automação Web'
end  

Quando('eu clico em criar usuario') do
    find('a[class="collapsible-header "]').click
    click_on 'Criar Usuários'
end  

Quando('preencho as minhas informações') do |table|
    register = table.rows_hash
    find('#user_name').set register[:nome]
    find('#user_lastname').set register[:segundo_nome]
    find('#user_email').set register[:email]
    find('#user_address').set register[:endereço]
    find('#user_university').set register[:universidade]
    find('#user_profile').set register[:profissão]
    find('#user_gender').set register[:genero]
    find('#user_age').set register[:idade]
    find('input[type="submit"]').click
    sleep 0
end

Então('eu realizo o cadastro da conta') do
    expect(page).to have_content("Usuário Criado com sucesso")

end

#Cenario: visualizar lista de usuarios 
Quando('eu clico na lista de usuarios') do
    visit '/'
    click_on 'Começar Automação Web'
    find('a[class="collapsible-header "]').click
    click_on'Lista de Usuários'  
    sleep 1
end

Então('eu visualizo todas as contas cadastradas') do
    expect(page).to have_content("Lista de Usuários!!")
 
end