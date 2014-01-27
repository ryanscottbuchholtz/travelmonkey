class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.integer :user_id, null: false
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.string :city, null: false
      t.string :state
      t.string :country, null: false
      t.integer :trip_type_id, null: false

      t.timestamps
    end
  end
end
