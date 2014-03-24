require "simplecov"
require 'coveralls'
Coveralls.wear!
# SimpleCov.start

require 'combustion'
Combustion.initialize! :action_controller
require "rspec/rails"
require "rspec-do_action"

require "pry-nav"

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  config.order = 'random'
end
