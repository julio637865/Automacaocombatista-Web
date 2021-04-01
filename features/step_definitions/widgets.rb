#Cenario:validar click em acordion 
Quando('eu clico em Widgets') do
    @widgets_Page = Widgetspage.new
    @widgets_Page.widgets.click
end
Quando('clico em accordion') do
    @widgets_Page.accordion.click
    @widgets_Page.fist.click
    expect(page).to have_content 'Primeiro Texto.'
    @widgets_Page.second.click
    expect(page).to have_content 'Segundo Texto.'
    @widgets_Page.third.click
end
Então('eu consigo clicar nos botões acordion') do
    expect(page).to have_content 'Terceiro Texto.'
end

#Cenario:validar click em acordion 
Quando('clico em autocomplete') do |table|
    register = table.rows_hash
    @widgets_Page.autocomplete.click
    @widgets_Page.estado.set register [:estado]
end
Então('eu consigo preencher o campo seu estado') do
   text 'brasil' 
end

#Cenario:validar click em autocomplete
Quando('clico em datapicker') do
    @widgets_Page.datapicker.click
    @widgets_Page.data.click
    @widgets_Page.clico_na_data.click
end

Então('eu consigo preencher a data picker') do
    page.execute_script("$('#datepicker').datepicker('setDate', '25/02/1970')")
end
  