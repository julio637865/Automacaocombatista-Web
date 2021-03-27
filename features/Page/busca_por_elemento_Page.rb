class Buscaelementospage < SitePrism::Page 

 element :clico_em_automação,  'Começar Automação Web'


#Cenario: Validar click em dropdown e select

 element :mail_Box,                  'a[class="btn dropdown-button"]'   
 element :desenho_favorito,          'a[id="dropdown3"]' 
 
 element :first_name, :xpath,         "//div[@class='input-field col s12'][1]"
 element :dragon_ball,:xpath,         "//div[@class='input-field col s12'][1]//li[3]/span"
 element :escolha_sua_opcao,:xpath,   "//div[@class='input-field col s12'][2]"
 element :ronaldinho_gaucho,:xpath,   "//div[@class='input-field col s12'][2]//li[3]/span"
end