require 'rails_helper'

RSpec.describe "worlds/index", type: :view do
  before(:each) do
    assign(:worlds, [
      World.create!(
        :name => "Name",
        :description => "Description"
      ),
      World.create!(
        :name => "Name",
        :description => "Description"
      )
    ])
  end

  it "renders a list of worlds" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
