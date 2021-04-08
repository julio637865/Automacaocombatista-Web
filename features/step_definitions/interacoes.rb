#Cenario: validar que seja possivel interagir com Drag And Drop
Quando('eu clico em Drag And Drop') do
    @interacoes_Page = InteracoesPage.new
    @interacoes_Page.interacoes.click 
    @interacoes_Page.drag_and_drop.click
end

Então('eu cosigo interagir com o elemento Drag And Drop') do
    @boneco_feio = find('#winston') 
    @caixinha = find('#dropzone')
    @boneco_feio.drag_to(@caixinha)
end

#Cenario: validar que seja possivel interagir com Mouse houver
Quando('eu clico em Mousehouver') do
    @interacoes_Page = InteracoesPage.new
    @interacoes_Page.interacoes.click 
    @interacoes_Page.mousehover.click
end  

Então('eu cosigo interagir com o elemento') do
    find('.activator').hover
    expect(page).to have_content 'Você usou o mouse hover!'
end

