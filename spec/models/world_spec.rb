require 'rails_helper'

RSpec.describe World, type: :model do
  let(:world) { World.new }
  describe "attributes" do
    it "should have a name" do
      expect(world).to respond_to(:name)
    end
  end
end
