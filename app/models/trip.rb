class Trip < ApplicationRecord
  belongs_to :user

  validates :start_date, presence: true
  validates :start_city, presence: true
  validates :end_city, presence: true
  validates :jet_name, presence: true
  validates :price, presence: true

end
