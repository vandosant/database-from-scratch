require 'spec_helper'
require_relative '../database_from_scratch'
require 'capybara/rspec'

Capybara.app = DatabaseApp

feature 'viewing the database contents' do
  before do
    DB[:objects].delete
  end
  scenario 'user can add a new object' do
    visit '/'

    expect(page).to have_no_content "Equilateral triangle"

    fill_in "create_object", with: "Equilateral triangle"
    click_on "Create"

    expect(page).to have_content "Equilateral triangle"
  end
end