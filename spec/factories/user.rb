# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { 'philip@schwaighofer.me' }
    password { 'password' }
    password_confirmation { 'password' }
  end
end
