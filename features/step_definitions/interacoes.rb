#Cenario: validar que seja possivel interagir com Drag And Drop
Quando('eu clico em Drag And Drop') do
    @interacoes_Page = InteracoesPage.new
    @interacoes_Page.interacoes.click 
    @interacoes_Page.drag_and_drop.click 

    


end
Então('eu cosigo interagir com o elemento Drag And Drop') do
 
end