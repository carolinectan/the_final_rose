require 'rails_helper'

RSpec.describe "bachelorette's contestants show page" do
  before :each do
    @bachelorette1 = Bachelorette.create!(name: 'Jessica', season_number: 3, description: 'Island Paradise')
    @bachelorette2 = Bachelorette.create!(name: 'Becca', season_number: 7, description: 'Urban Luxury')

    @contestant1 = @bachelorette1.contestants.create!(name: 'Troy', age: 37, hometown: 'Austin')
    @contestant2 = @bachelorette1.contestants.create!(name: 'David', age: 33, hometown: 'Seattle')
    @contestant3 = @bachelorette1.contestants.create!(name: 'Gabriel', age: 40, hometown: 'New York City')
    @contestant4 = @bachelorette2.contestants.create!(name: 'Jared', age: 27, hometown: 'Chicago')

    visit "/bachelorettes/#{@bachelorette1.id}/contestants"
  end

  it "links to the bachelorette's contestants" do
    expect(page).to have_content(@contestant1.name)
    expect(page).to have_content(@contestant1.age)
    expect(page).to have_content(@contestant1.hometown)

    expect(page).to have_content(@contestant2.name)
    expect(page).to have_content(@contestant2.age)
    expect(page).to have_content(@contestant2.hometown)

    expect(page).to have_content(@contestant3.name)
    expect(page).to have_content(@contestant3.age)
    expect(page).to have_content(@contestant3.hometown)

    expect(page).to have_no_content(@contestant4.name)
    expect(page).to have_no_content(@contestant4.age)
    expect(page).to have_no_content(@contestant4.hometown)

    expect(page).to have_content(@bachelorette1.name)
    expect(page).to have_no_content(@bachelorette2.name)
  end


  # And I can click on any contestants name (as a link) to go to that contestants show page "/contestants/:id"
end
