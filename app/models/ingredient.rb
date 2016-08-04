class Ingredient < ActiveRecord::Base
  has_many :doses
  has_many :cocktails, through: :doses
  validates :name, presence: true, uniqueness: true
  # before_destroy :check_for_cocktail

  # private

  # def check_for_cocktail
  #   unless cocktail.nil?
  #     self.errors[:base] << "Cannot delete ingredient while a cocktail that uses it exists."
  #     return false
  #   end
  # end
end
