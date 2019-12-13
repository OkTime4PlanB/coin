# frozen_string_literal: true

class Spending < ApplicationRecord
  belongs_to :user
  belongs_to :category
end
