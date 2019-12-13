# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it 'creates a user' do
    user = create(:user)
    expect(user.email).to eq('philip@schwaighofer.me')
  end
end
