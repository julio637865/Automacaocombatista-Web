#language: pt

Funcionalidade: preenchendo formulario 


Cenario: cadastro de usuario 

Dado que eu acesso o site de automação 
Quando eu clico em criar usuario 
E preencho as minhas informações  
|  nome         |         Julio          |
|  segundo_nome |         Cesar          |
|  email        | julioc.9730@gmail.com  |
|  endereço     | Rua joão puga dias 356 |
|  universidade |         FMU            |
|  profissão    |       Tester Qa        |
|  genero       |       Masculino        |
|  idade        |          24            |
Então eu realizo o cadastro da conta 

@preenchimento_de_formulario
Cenario: visualizar lista de usuarios  

Dado que eu acesso o site de automação 
Quando eu clico na lista de usuarios 
Então eu visualizo todas as contas cadastradas