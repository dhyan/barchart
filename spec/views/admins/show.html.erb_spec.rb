require 'spec_helper'

describe "admins/show", :type => :view do
  before(:each) do
    @admin = assign(:admin, Admin.create!(
      :name => "Name",
      :sex => false,
      :address => "Address"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Address/)
  end
end
