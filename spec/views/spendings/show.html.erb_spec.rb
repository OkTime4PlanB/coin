# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'spendings/show', type: :view do
  before(:each) do
    @spending = assign(:spending, Spending.create!(
                                    user_id: 2,
                                    category_id: 3,
                                    name: 'Name',
                                    price: 4,
                                    amount: 5
                                  ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
  end
end
