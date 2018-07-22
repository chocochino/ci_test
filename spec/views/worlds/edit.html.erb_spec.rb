require 'rails_helper'

RSpec.describe "worlds/edit", type: :view do
  before(:each) do
    @world = assign(:world, World.create!(
      :name => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit world form" do
    render

    assert_select "form[action=?][method=?]", world_path(@world), "post" do

      assert_select "input[name=?]", "world[name]"

      assert_select "input[name=?]", "world[description]"
    end
  end
end
