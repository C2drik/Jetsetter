class Trip < ApplicationRecord
  belongs_to :user

  validates :start_date, presence: true
  validates :start_city, presence: true
  validates :end_city, presence: true
  validates :jet_id, presence: true
  validates :price, presence: true
  validates :user_id, presence: true, uniqueness: true

end
