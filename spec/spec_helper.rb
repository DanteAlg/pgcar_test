ENV['RACK_ENV'] = 'test'

require './config/environment'

require './app/controllers/application_controller'
require './app/controllers/champions_controller'

VCR.configure do |config|
  config.cassette_library_dir = 'spec/fixtures/'
  config.hook_into :webmock
  config.configure_rspec_metadata!
end

RSpec.configure do |config|
  config.include Rack::Test::Methods

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.filter_run :focus
  config.run_all_when_everything_filtered = true

  config.disable_monkey_patching!

  config.warnings = true
  config.order = :random
end
