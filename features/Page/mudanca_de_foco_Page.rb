class Mudancadefocopage < SitePrism::Page 

 set_url '/'
 element :clico_em_mudanca_de_foco,   :xpath,       "//li[3]//a[@class='collapsible-header waves-teal']"
 element :clico_em_alert,             :xpath,       "//li[@class='bold active']//ul/li[1]/a"
 element :clica_js_alert,                           'button[onclick="jsAlert()"]'
 element :clica_js_confirm,                         'button[onclick="jsConfirm()"]'
 element :clica_js_prompt,                          'button[onclick="jsPrompt()"]'
 element :clico_em_iframe,            :xpath,       "//li[@class='bold active']//ul/li[2]/a"
 element :clico_em_abrir,                           'a[class="waves-light btn modal-trigger"]'

end


