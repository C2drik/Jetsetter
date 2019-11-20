class Booking < ApplicationRecord
  STATUSES = ["Pending", "Confirmed"]
  belongs_to :user
  belongs_to :trip
  validates :status, inclusion: { in: STATUSES }
end
