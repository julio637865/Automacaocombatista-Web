#Cenario: cadastro de usuario 
Dado('que eu acesso o site de automação') do
    @access = Cadastropage.new
    @access.load
    click_on 'Começar Automação Web'
    
end  

Quando('eu clico em criar usuario') do
    @access.clicando_em_formulario.click
    click_on 'Criar Usuários'
end  

Quando('preencho as minhas informações') do |table|
    value = table.rows_hash
    @access.nome.set           value [:nome         ]
    @access.segundo_nome.set   value [:segundo_nome ]
    @access.email.set          value [:email        ]
    @access.endereço.set       value [:endereço     ]
    @access.universidade.set   value [:universidade ]
    @access.profissão.set      value [:email        ]
    @access.genero.set         value [:genero       ]
    @access.idade.set          value [:idade        ] 
    @access.botão_clicar.click
end

Então('eu realizo o cadastro da conta') do
    expect(page).to have_content("Usuário Criado com sucesso")
end

#Cenario: visualizar lista de usuarios 
Quando('eu clico na lista de usuarios') do
    @acess.load
    click_on 'Começar Automação Web'
    @access.clicando_em_formulario.click
    click_on'Lista de Usuários'  
end

Então('eu visualizo todas as contas cadastradas') do
    expect(page).to have_content("Lista de Usuários!!")
end