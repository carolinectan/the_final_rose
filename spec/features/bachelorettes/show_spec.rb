require 'rails_helper'

RSpec.describe 'bachlorette show page' do
  before :each do
    @bachelorette1 = Bachelorette.create!(name: 'Jessica', season_number: 3, description: 'Island Paradise')
    @bachelorette2 = Bachelorette.create!(name: 'Becca', season_number: 7, description: 'Urban Luxury')

    @contestant1 = @bachelorette1.contestants.create!(name: 'Troy', age: 37, hometown: 'Austin')
    @contestant2 = @bachelorette1.contestants.create!(name: 'David', age: 33, hometown: 'Seattle')
    @contestant3 = @bachelorette1.contestants.create!(name: 'Gabriel', age: 40, hometown: 'New York City')
    @contestant4 = @bachelorette2.contestants.create!(name: 'Jared', age: 27, hometown: 'Chicago')

    visit "/bachelorettes/#{@bachelorette1.id}"
  end

  it "displays the name, season number, and season description of the bachelorette" do
    expect(page).to have_content(@bachelorette1.name)
    expect(page).to have_content(@bachelorette1.season_number)
    expect(page).to have_content(@bachelorette1.description)
  end

  it "links to the bachelorette's contestants" do
    expect(page).to have_link("#{@bachelorette1.name}'s Contestants")
  end
end
