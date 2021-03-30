#language: pt


Funcionalidade: Mudança de foco 

Cenario: Clicando em alert  
Dado que eu acesso o site automação
Quando eu clico em mudança de foco  
E clico em algum botão 
Então eu consigo clicar nos botões da tela 

Cenario: Clicando em botões infra 
Dado que eu acesso o site automação
Quando eu clico em mudança de foco 
E clico em botões iframe  
Então eu consigo preencher campos no iframe 

Cenario: Validar que seja aberta uma nova aba 
Dado que eu acesso o site automação
Quando eu clico em mudança de foco 
E clico em abrir uma janela   
Então é aberto uma nova aba no navegador 

@mudanca_de_foco
Cenario: Validar que seja aberta clique em modal 
Dado que eu acesso o site automação
Quando eu clico em mudança de foco 
E clico em modal   
Então eu vejo o modal 