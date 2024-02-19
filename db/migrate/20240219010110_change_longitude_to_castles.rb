class ChangeLongitudeToCastles < ActiveRecord::Migration[7.1]
  def change
    change_column :castles, :longitude, :float
  end
end
