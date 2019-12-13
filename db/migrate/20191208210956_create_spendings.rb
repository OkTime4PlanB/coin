# frozen_string_literal: true

class CreateSpendings < ActiveRecord::Migration[6.0]
  def change
    create_table :spendings do |t|
      t.integer :user_id
      t.integer :category_id
      t.string :name
      t.integer :price
      t.integer :amount

      t.timestamps
    end
  end
end
