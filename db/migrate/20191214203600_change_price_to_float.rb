class ChangePriceToFloat < ActiveRecord::Migration[6.0]
  def change
    change_column :spendings, :price, :float
  end
end
