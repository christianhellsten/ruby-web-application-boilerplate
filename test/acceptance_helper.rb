require_relative '../app.rb'

module AcceptanceHelper
  require "minitest/autorun"
  require 'capybara/dsl'
  include Capybara::DSL

  Capybara.app = App
end
