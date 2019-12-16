# frozen_string_literal: true

class AddTotalToCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :total, :float
  end
end
