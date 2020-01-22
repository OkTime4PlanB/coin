# frozen_string_literal: true

FactoryBot.define do
  factory :spending do
    user_id { 1 }
    category_id { 1 }
    name { 'Tomaten' }
    price { 2.0 }
    amount { 1 }
  end
end
