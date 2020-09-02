require 'rspec'
require 'appium_lib'
require 'selenium-webdriver'
require 'cucumber'
require 'byebug'
require 'faker'
require 'allure-cucumber'
require 'logger'

TWENTY_SECONDS = 20

include RSpec::Matchers

require File.dirname(__FILE__) + "/../helpers/utilities"
include MOBILE

Allure.configure do |c|
  c.clean_results_directory = true
  c.logging_level = Logger::INFO
end

logs_cleaner if ENV['LOGGER'] && ENV['LOGGER'].upcase == "ON"