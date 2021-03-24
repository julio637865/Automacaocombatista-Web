#After do |scenario|
#    add_screenshot(scenario)
#
#    if scenario.failed?
#        add_browser_logs
#    end
# end
#
# def add_screenshot(scenario)
#    nome_cenario = scenario.name.gsub(/[^A-Za-z0-9]/, '')
#    nome_cenario = nome_cenario.gsub(' ','_').downcase!
#    screenshot = "log/screenshots/#{nome_cenario}.png"
#    page.save_screenshot(screenshot)
#    attach(screenshot, 'image/png', 'Print maroto :)')
# end
#