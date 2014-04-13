require 'sequel'
DB = Sequel.connect("postgres://#{ENV['USER']}:#{ENV['PASSWORD']}@localhost/database_from_scratch_test")

ENV['RACK_ENV'] = 'test'
RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  config.order = 'random'
end
