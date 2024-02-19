class AddNameToCastles < ActiveRecord::Migration[7.1]
  def change
    add_column :castles, :name, :string
  end
end
