class ChefsController < ApplicationController
  def show
    @chef = Chef.find(params[:id])
    @pop_ingredients = @chef.top_three
  end
end