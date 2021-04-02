#language :pt

@testando_widgets
Funcionalidade: testando widgets 

Cenario:validar click em acordion 
Dado que eu acesso o site de automação 
Quando eu clico em Widgets
E clico em accordion 
Então eu consigo clicar nos botões acordion 

Cenario:validar click em autocomplete 
Dado que eu acesso o site de automação 
Quando eu clico em Widgets
E clico em autocomplete 
|estado|brasil| 
Então eu consigo preencher o campo seu estado 
 
Cenario:validar click em autocomplete 
Dado que eu acesso o site de automação 
Quando eu clico em Widgets
E clico em datapicker 
Então eu consigo preencher a data picker

