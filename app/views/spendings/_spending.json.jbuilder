# frozen_string_literal: true

json.extract! spending, :id, :user_id, :category_id, :name, :price, :amount, :created_at, :updated_at
json.url spending_url(spending, format: :json)
