# frozen_string_literal: true

require 'capybara/cucumber'

Capybara.default_driver = :selenium_chrome
Capybara.configure do |config|
  config.default_driver = if ENV['HEADLESS'] == 'false'
                            :selenium_chrome
                          else
                            :selenium_chrome_headless
                          end
end
