class Widgetspage < SitePrism::Page

#Cenario:validar click em acordion

element :widgets,      :xpath,       "//li[4]/a[@class='collapsible-header waves-teal']"
element :accordion,    :xpath,       "//li[@class='bold active']//li[1]//a"
element :fist,         :xpath,       "//li[1]/div[@class='collapsible-header']"
element :second,       :xpath,       "//li[2]/div[@class='collapsible-header']"
element :third,        :xpath,       "//li[3]/div[@class='collapsible-header']"

#Cenario:validar click em autocomplete

element :autocomplete, :xpath,       "//li[@class='bold active']/div//ul/li[2]/a"
element :estado,                     'input[id="autocomplete-input"]'

#Cenario:validar click em autocomplete 

element :datapicker,   :xpath,       "//li[@class='bold active']/div//ul/li[3]/a"
element :data,         :xpath,       "//div[3]/div[@class='col s8']/p/input"
element :clico_na_data,              'div[class="select-wrapper select-month"]'



end 