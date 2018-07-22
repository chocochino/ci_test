require 'rails_helper'

RSpec.describe "worlds/show", type: :view do
  before(:each) do
    @world = assign(:world, World.create!(
      :name => "Name",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Description/)
  end
end
