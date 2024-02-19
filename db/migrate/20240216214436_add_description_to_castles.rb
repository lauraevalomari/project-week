class AddDescriptionToCastles < ActiveRecord::Migration[7.1]
  def change
    add_column :castles, :description, :string
  end
end
