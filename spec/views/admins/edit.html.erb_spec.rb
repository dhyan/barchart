require 'spec_helper'

describe "admins/edit", :type => :view do
  before(:each) do
    @admin = assign(:admin, Admin.create!(
      :name => "MyString",
      :sex => false,
      :address => "MyString"
    ))
  end

  it "renders the edit admin form" do
    render

    assert_select "form[action=?][method=?]", admin_path(@admin), "post" do

      assert_select "input#admin_name[name=?]", "admin[name]"

      assert_select "input#admin_sex[name=?]", "admin[sex]"

      assert_select "input#admin_address[name=?]", "admin[address]"
    end
  end
end
