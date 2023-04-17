class Chefs::DishesController < ApplicationController
  def show
    @dish = Dish.find(params[:id])
  end

  def update
    DishIngredient.create(dish_id: params[:id], ingredient_id: params[:ingredient_id])
  end

end
