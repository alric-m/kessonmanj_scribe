class ChangeRateTypeToFloat < ActiveRecord::Migration[5.2]
  def change
    change_column :recipes, :rate, :float
  end
end
