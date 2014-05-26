require 'spec_helper'

describe "admins/index", :type => :view do
  before(:each) do
    assign(:admins, [
      Admin.create!(
        :name => "Name",
        :sex => false,
        :address => "Address"
      ),
      Admin.create!(
        :name => "Name",
        :sex => false,
        :address => "Address"
      )
    ])
  end

  it "renders a list of admins" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
  end
end
