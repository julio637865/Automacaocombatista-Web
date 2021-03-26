require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'report_builder'
require 'site_prism'
require 'allure-cucumber'


Capybara.configure do |config|
    config.app_host = 'https://automacaocombatista.herokuapp.com/'
    config.default_max_wait_time = 10
    config.default_driver = :selenium_chrome #roda no navegador
    #config.default_driver = :selenium_chrome_headless #roda com o nageador em background
end

AllureCucumber.configure do |config|
    config.results_directory = '/logs'
    config.clean_results_directory = true
end