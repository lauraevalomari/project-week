class ChangeDescriptionToCastles < ActiveRecord::Migration[7.1]
  def change
    change_column :castles, :description, :text
  end
end
