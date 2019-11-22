class Trip < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :start_date, presence: true
  validates :start_city, presence: true
  validates :end_city, presence: true
  validates :jet_name, presence: true
  validates :price, presence: true

  before_save :geocode_bookings

  def geocode_bookings
    bookings.each(&:geocode_endpoints) if bookings.any?
  end
end
