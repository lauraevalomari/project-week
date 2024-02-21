class ChangeLatitudeToCastles < ActiveRecord::Migration[7.1]
  def change
    change_column :castles, :latitude, :float
  end
end
