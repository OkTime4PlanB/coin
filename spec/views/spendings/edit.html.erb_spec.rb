require 'rails_helper'

RSpec.describe "spendings/edit", type: :view do
  before(:each) do
    @spending = assign(:spending, Spending.create!(
      :user_id => 1,
      :category_id => 1,
      :name => "MyString",
      :price => 1,
      :amount => 1
    ))
  end

  it "renders the edit spending form" do
    render

    assert_select "form[action=?][method=?]", spending_path(@spending), "post" do

      assert_select "input[name=?]", "spending[user_id]"

      assert_select "input[name=?]", "spending[category_id]"

      assert_select "input[name=?]", "spending[name]"

      assert_select "input[name=?]", "spending[price]"

      assert_select "input[name=?]", "spending[amount]"
    end
  end
end
