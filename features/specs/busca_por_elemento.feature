#language: pt

Funcionalidade: Clicando em link  
 
Cenario: Validar que seja possivel clicar em links
Dado que eu acesso o site 
Quando clico em busca por elementos 
E clico em cada um dos links 
Então sou direcionado ao respecitvo destino de cada um 

Cenario: Validar preenchimento em campos de texto
Dado que eu acesso o site 
Quando que eu clico em busca por elementos  
E clico em Inputs e TextField
E preencho os campos 
|    Nome     | Julio                             |
| Ultimo_nome | Santos                            |
|  Password   | 123456789                         |
|   Email     | julioteste@gmail.com              |
|  Formulario | descrição para teste automatizado |
Então todos os campos são preenchidos com sucesso 

Cenario: Validar que seja possivel clicar nos botões 
Dado que eu acesso o site 
Quando que eu clico em busca por elementos 
E clico em botões
Então eu consigo clicar em todos os botões contidos na tela 

Cenario: Validar que seja possivel clicar em Radio e Checkbox
Dado que eu acesso o site 
Quando que eu clico em busca por elementos 
E clico em Radio e Checkbox
Então eu consigo clicar nos botões  

Cenario: Validar click em dropdown e select
Dado que eu acesso o site 
Quando que eu clico em busca por elementos 
E clico nos botões
Então eu consigo clico em dropdown e select 

Cenario: Validar busca por texto 
Dado que eu acesso o site 
Quando que eu clico em busca por elementos 
E clico em buscar por texto 
Então eu visualizo os textos que busquei 

@busca_por_elemento
Cenario: interagindo com tebelas 
Dado que eu acesso o site 
Quando que eu clico em busca por elementos 
E clico em uma tabela 
Então eu visualizo dados dessa tabela 