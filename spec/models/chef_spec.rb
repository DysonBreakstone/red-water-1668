require 'rails_helper'

RSpec.describe Chef, type: :model do
  describe "validations" do
    it {should validate_presence_of :name}
  end
  describe "relationships" do
    it {should have_many :dishes}
  end

  describe "instance methods" do
    before do
      test_data
    end

    it "#top_three" do
      @dish_ingredient_25 = @dish_3.dish_ingredients.create!(ingredient_id: @ingredient_3.id)
      @dish_ingredient_26 = @dish_3.dish_ingredients.create!(ingredient_id: @ingredient_4.id)

      expect(@chef_1.top_three).to eq([@ingredient_1, @ingredient_3, @ingredient_4])
    end
  end
end