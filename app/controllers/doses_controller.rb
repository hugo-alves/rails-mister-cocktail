class DosesController < ApplicationController
  before_action :find_cocktail
  before_action :find_ingredient

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.save
    redirect_to dose_path(@dose)
  end

  def index
    @doses = Dose.all
  end

  def show
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :cocktail, :ingredient)
  end

  # def find_cocktail
  #   @cocktail = Cocktail.find(params[:cocktail_id])

  # end

  # def find_ingredient
  #   @ingredient = Ingredient.find(params[:ingredient_id])
  # end
end
