require 'spec_helper'

require "simplecov"
require 'coveralls'
Coveralls.wear!
# SimpleCov.start

require "pry-nav"
require 'combustion'
Combustion.initialize! :active_record, :action_controller
require "rspec/rails"
require "rspec-do_action"


RSpec.configure do |config|
  config.infer_base_class_for_anonymous_controllers = false
end
