require_relative 'database_from_scratch'
require 'sequel'

DB = Sequel.connect("postgres://#{ENV['USER']}:#{ENV['PASSWORD']}@localhost/database_from_scratch_development")

run DatabaseApp