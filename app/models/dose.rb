class Dose < ActiveRecord::Base
  validates :description, presence: true
  validates :cocktail_id, presence: true
  validates :ingredient_id, presence: true
end
