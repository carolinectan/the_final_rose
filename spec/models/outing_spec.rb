require 'rails_helper'

RSpec.describe Outing, type: :model do
  describe 'relationships' do
    # it { should belong_to(:) }
    it { should have_many(:group_dates) }
    it { should have_many(:contestants).through(:group_dates) }
  end

  # describe 'validations' do
  #   it { should validate_presence_of(:) }
  # end
  #
  # before :each do
  #
  # end
  #
  # describe 'class methods' do
  #   describe '.' do
  #   end
  # end
  #
  # describe 'instance methods' do
  #   describe '#' do
  #   end
  # end
end
