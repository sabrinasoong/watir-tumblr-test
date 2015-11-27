require 'rspec'
require './tumblrtest.rb'

RSpec.configure do|config|
  config.color = true
  config.tty = true
  config.formatter = :documentation
end
