class Booking < ApplicationRecord
  STATUSES = ["pending", "confirmed"]
  belongs_to :user
  belongs_to :trip
  validates :status, inclusion: { in: STATUSES }
end
