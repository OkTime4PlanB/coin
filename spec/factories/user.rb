# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { 'philip@schwaighofer.me' }
    password { 'sicheresPasswort123' }
    password_confirmation { 'sicheresPasswort123' }
  end
end
