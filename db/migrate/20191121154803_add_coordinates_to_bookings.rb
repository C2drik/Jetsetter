class AddCoordinatesToBookings < ActiveRecord::Migration[5.2]
  def change
    add_column :bookings, :start_latitude, :float
    add_column :bookings, :end_latitude, :float
    add_column :bookings, :start_longitude, :float
    add_column :bookings, :end_longitude, :float
  end
end
