class InteracoesPage < SitePrism::Page 
#Cenario: validar que seja possivel interagir com Drag And Drop

set_url "/"
element :interacoes,                :xpath,    "//ul//li[@class='bold'][5]/a"
element :drag_and_drop,             :xpath,    "//li[@class='bold active']/div//ul/li[1]/a"

#Cenario: validar que seja possivel interagir com Mouse houver

element :mousehover,                :xpath,   "//li[@class='bold active']//ul/li[2]/a"

end


