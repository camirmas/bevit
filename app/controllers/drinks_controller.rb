class DrinksController < ApplicationController
  before_action :set_drink, only: [:show, :edit, :update, :destroy]

  def index
    @drinks = Drink.all
  end

  def show
  end

  def edit
  end

  def update
    @drink = @drink.update(drink_params)
    redirect_to drink_path(@drink)
  end

  def destroy
    @drink.destroy
    redirect_to drinks_path
  end

  private

  def set_drink
    @drink = Drink.find(params[:id])
  end

  def drink_params
    params.require(:drink).permit(
      :name,
      :glass,
      :category,
      :ingredients,
      :amounts,
      :special_ingredients,
      :garnish,
      :preparation
    )
  end
end
