class Chef < ApplicationRecord
  validates_presence_of :name
  has_many :dishes
  has_many :ingredients, through: :dishes

  def top_three 
    ingredients.select("count(ingredients.*) as total_count, ingredients.id, ingredients.*").group("ingredients.id").order(total_count: :desc).limit(3)
  end
end