class Trip < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :bookings, dependent: :destroy


  validates :start_date, presence: true
  validates :start_city, presence: true
  validates :end_city, presence: true
  validates :jet_name, presence: true
  validates :price, presence: true
  validates :duration, presence: true


  before_save :geocode_bookings

  def geocode_bookings
    bookings.each(&:geocode_endpoints) if bookings.any?
  end
end
