class Outing < ApplicationRecord
  has_many :group_dates
  has_many :contestants, through: :group_dates
end
