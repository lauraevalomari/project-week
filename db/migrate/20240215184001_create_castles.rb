class CreateCastles < ActiveRecord::Migration[7.1]
  def change
    create_table :castles do |t|
      t.string :category
      t.string :address
      t.integer :price_per_day
      t.boolean :haunted
      t.text :special_feature
      t.references :user, null: false, foreign_key: true
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
