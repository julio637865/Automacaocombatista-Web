class Mudancadefocopage < SitePrism::Page 

 element :clica_js_alert,     'button[onclick="jsAlert()"]'
 element :clica_js_confirm,   'button[onclick="jsConfirm()"]'
 element :clica_js_prompt,    'button[onclick="jsPrompt()"]'

 #Cenario: Clicando em botões infra
 

end 
