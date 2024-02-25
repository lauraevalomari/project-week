class AddGuestsToCastles < ActiveRecord::Migration[7.1]
  def change
    add_column :castles, :number_of_guests, :integer
  end
end
