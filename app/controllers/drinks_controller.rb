class DrinksController < ApplicationController
  before_action :set_drink, only: [:show, :edit, :update, :destroy]

  def index
    @drinks = Drink.all.order(:name)
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

  def category
    cat = params[:name].gsub("_", " ")
    @drinks = Drink.all.where(category: cat).order(:name)
    render "filtered_category"
  end

  def list_by_ingredient
    render "list_by_ingredient"
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
