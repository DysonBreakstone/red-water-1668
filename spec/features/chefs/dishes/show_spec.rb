require 'rails_helper'

RSpec.describe "show page", type: :feature do
  describe "display" do
    before do 
      test_data
    end

    it "shows dish's name, ingredient list, calorie count, and chef" do
      visit chefs_dish_path(@dish_1)

      expect(page).to have_content("dish 1")
      expect(page).to have_content("chef: chef 1")
      expect(page).to have_content("description: 1 dish")
      expect(page).to have_content("calories: 100")
      expect(page).to have_content("ingredients:")
      expect(page).to have_content("ingredient 1")
      expect(page).to have_content("ingredient 2")

      visit chefs_dish_path(@dish_5)

      expect(page).to have_content("dish 5")
      expect(page).to have_content("chef: chef 2")
      expect(page).to have_content("description: 5 dish")
      expect(page).to have_content("calories: 500")
      expect(page).to have_content("ingredients:")
      expect(page).to have_content("ingredient 1")
      expect(page).to have_content("ingredient 6")
    end
  end

  describe "forms" do
    before do
      test_data
    end

    it "has a form to add a new ingredient" do
      visit chefs_dish_path(@dish_9)
      expect(page).to have_content("Add an ingredient to this dish")

      expect(page).to have_field("ingredient_id")
      expect(page).to have_button("Save")
    end

    it "form adds ingredient to dish" do
      visit chefs_dish_path(@dish_9)
      expect(page).to have_no_content(@ingredient_3.name)

      fill_in("ingredient_id", with: @ingredient_3.id)
      click_button("Save")
      @dish_9.reload
      visit chefs_dish_path(@dish_9)

      expect(page).to have_content(@ingredient_3.name)
    end
  end
end