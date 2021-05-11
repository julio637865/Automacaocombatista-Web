class Cadastropage < SitePrism::Page 

set_url '/'
element :clicando_em_formulario,    'a[class="collapsible-header "]'
element :nome,                      '#user_name'
element :segundo_nome,              '#user_lastname'
element :email,                     '#user_email'
element :endereço,                  '#user_address'
element :universidade,              '#user_university'
element :profissão,                 '#user_profile'
element :genero,                    '#user_gender'
element :idade,                     '#user_age' 
element :botão_clicar,              'input[type="submit"]'

end 