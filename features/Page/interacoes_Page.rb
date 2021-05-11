class InteracoesPage < SitePrism::Page 

set_url "/"
element :interacoes,                :xpath,    "//ul//li[@class='bold'][5]/a"
element :drag_and_drop,             :xpath,    "//li[@class='bold active']/div//ul/li[1]/a"
element :mousehover,                :xpath,   "//li[@class='bold active']//ul/li[2]/a"

end


