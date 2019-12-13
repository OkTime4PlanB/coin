# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'spendings/new', type: :view do
  before(:each) do
    assign(:spending, Spending.new(
                        user_id: 1,
                        category_id: 1,
                        name: 'MyString',
                        price: 1,
                        amount: 1
                      ))
  end

  it 'renders new spending form' do
    render

    assert_select 'form[action=?][method=?]', spendings_path, 'post' do
      assert_select 'input[name=?]', 'spending[user_id]'

      assert_select 'input[name=?]', 'spending[category_id]'

      assert_select 'input[name=?]', 'spending[name]'

      assert_select 'input[name=?]', 'spending[price]'

      assert_select 'input[name=?]', 'spending[amount]'
    end
  end
end
