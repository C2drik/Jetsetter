class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.string :city
      t.date :start_date
      t.date :end_date
      t.string :start_city
      t.string :end_city
      t.integer :jet_id
      t.integer :price
      t.string :jet_name
      t.string :jet_model
      t.integer :jet_seats
      t.string :jet_description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
