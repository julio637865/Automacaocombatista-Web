class Buscaelementospage < SitePrism::Page 


#Cenario: Validar click em dropdown e select
 element :clico_em_automação,        'Começar Automação Web'
 element :mail_Box,                  'a[class="btn dropdown-button"]'   
 element :desenho_favorito,          'a[id="dropdown3"]' 
 
 element :first_name,        :xpath,  "//div[@class='input-field col s12'][1]"
 element :dragon_ball,       :xpath,  "//div[@class='input-field col s12'][1]//li[3]/span"
 element :escolha_sua_opcao, :xpath,  "//div[@class='input-field col s12'][2]"
 element :ronaldinho_gaucho, :xpath,  "//div[@class='input-field col s12'][2]//li[3]/span"
 element :pais,              :xpath,  "//div[@class='input-field col s12'][3]" 
 element :brasil,            :xpath,  "//div[@class='input-field col s12'][3]//li[1]/span"
 element :genero,            :xpath,  "//div[@class='input-field col s12 m6'][1]"
 element :homem,             :xpath,  "//div[@class='input-field col s12 m6'][1]//li[2]/span"
 element :sexo,              :xpath,  "//div[@class='input-field col s12 m6'][2]" 
 element :browser_favorito,  :xpath,  "//div[5]/select[@id='dropdown']"

end