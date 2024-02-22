class ChangeStartingToBookings < ActiveRecord::Migration[7.1]
  def change
    rename_column :bookings, :starting_at, :opening_date
  end
end
