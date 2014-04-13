require 'spec_helper'
require_relative '../database_from_scratch'
require 'capybara/rspec'

Capybara.app = DatabaseApp

feature 'viewing the database contents' do
  scenario 'user can visit the homepage' do
    visit '/'

    expect(page).to have_content "Hello"
  end
end