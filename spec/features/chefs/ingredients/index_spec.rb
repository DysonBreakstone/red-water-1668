require 'rails_helper'

RSpec.describe "chef's ingredients index" do
  describe "display" do
    before do
      test_data
    end

    it "lists the chef's ingredients" do
      visit chef_ingredients_path(@chef_1)

      expect(page).to have_content("#{@chef_1.name}'s ingredients")
      expect(page).to have_content("ingredient 1")
      expect(page).to have_content("ingredient 2")
      expect(page).to have_content("ingredient 3")
      expect(page).to have_content("ingredient 4")
      expect(page).to have_no_content("ingredient 5")
      expect(page).to have_no_content("ingredient 6")
    end
  end
end