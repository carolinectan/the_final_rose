class Contestant <ApplicationRecord
  belongs_to :bachelorette
  has_many :group_dates
  has_many :outings, through: :group_dates
end
