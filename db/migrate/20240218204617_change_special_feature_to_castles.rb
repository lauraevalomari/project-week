class ChangeSpecialFeatureToCastles < ActiveRecord::Migration[7.1]
  def change
    change_column :castles, :special_feature, :string
  end
end
