# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'spendings/index', type: :view do
  before(:each) do
    assign(:spendings, [
             Spending.create!(
               user_id: 2,
               category_id: 3,
               name: 'Name',
               price: 4,
               amount: 5
             ),
             Spending.create!(
               user_id: 2,
               category_id: 3,
               name: 'Name',
               price: 4,
               amount: 5
             )
           ])
  end

  it 'renders a list of spendings' do
    render
    assert_select 'tr>td', text: 2.to_s, count: 2
    assert_select 'tr>td', text: 3.to_s, count: 2
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 4.to_s, count: 2
    assert_select 'tr>td', text: 5.to_s, count: 2
  end
end
