class ChangeEndingToBookings < ActiveRecord::Migration[7.1]
  def change
    rename_column :bookings, :ending_at, :ending_date
  end
end
