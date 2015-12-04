require 'battlenet/api'
require 'dotenv'
require 'webmock/rspec'
require 'vcr'

Dotenv.load

VCR.configure do |config|
  config.cassette_library_dir = "fixtures/cassettes"
  config.hook_into :webmock
end
