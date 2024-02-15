class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.references :castle, null: false, foreign_key: true
      t.date :starting_at
      t.date :ending_at
      t.integer :total_price
      t.references :user, null: false, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
