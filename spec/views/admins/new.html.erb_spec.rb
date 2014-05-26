require 'spec_helper'

describe "admins/new", :type => :view do
  before(:each) do
    assign(:admin, Admin.new(
      :name => "MyString",
      :sex => false,
      :address => "MyString"
    ))
  end

  it "renders new admin form" do
    render

    assert_select "form[action=?][method=?]", admins_path, "post" do

      assert_select "input#admin_name[name=?]", "admin[name]"

      assert_select "input#admin_sex[name=?]", "admin[sex]"

      assert_select "input#admin_address[name=?]", "admin[address]"
    end
  end
end
