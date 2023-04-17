require 'rails_helper'

RSpec.describe "Show page" do
  describe "display" do
    before do
      test_data
    end

    it "has a link to chef ingredients index page" do
      visit chef_path(@chef_3) 

      expect(page). to have_content(@chef_3.name)
      expect(page).to have_link("#{@chef_3.name}'s ingredients", href: chef_ingredients_path(@chef_3) )
    end

    it "has the chef's 3 most popular ingredients" do
      @dish_ingredient_25 = @dish_3.dish_ingredients.create!(ingredient_id: @ingredient_3.id)
      @dish_ingredient_26 = @dish_3.dish_ingredients.create!(ingredient_id: @ingredient_4.id)
      visit chef_path(@chef_1)
      
      expect(page).to have_content("most popular ingredients")
      expect(page).to have_content("ingredient 1")
      expect(page).to have_content("ingredient 3")
      expect(page).to have_content("ingredient 4")
    end
  end
end