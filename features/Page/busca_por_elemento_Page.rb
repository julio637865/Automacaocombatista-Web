class Buscaelementospage < SitePrism::Page 

 element :clico_em_automação,  'Começar Automação Web'


#Cenario: Validar click em dropdown e select

 element :botão,                'a[class="btn dropdown-button"]'   
 element :opção_escolhida,       'a[id="dropdown1"]' 
 element :desenho_favorito,     'input[class="select-dropdown"]'

end 