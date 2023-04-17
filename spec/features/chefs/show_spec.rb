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
  end
end