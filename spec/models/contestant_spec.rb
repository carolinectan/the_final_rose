require 'rails_helper'

RSpec.describe Contestant, type: :model do
  describe 'relationships' do
    it { should belong_to(:bachelorette) }
    
    it { should have_many(:group_dates) }
    it { should have_many(:outings).through(:group_dates) }
  end
end
