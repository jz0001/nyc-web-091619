class DrinksController < ApplicationController
  before_action :get_drink, only: [:show, :ingredients, :edit]

  
  def index
    @drinks = Drink.all
  end

  def show
  end
  
  def ingredients
    byebug
  end

  def new
    @drink = Drink.new
  end

  def create
    @drink = Drink.new(drink_params)

    if @drink.save
      redirect_to drink_path(@drink)
    else
      flash[:errors] = @drink.errors.full_messages
      redirect_to new_drink_path
    end
  end

  def edit
    
  end
  
  private

  def get_drink
    @drink = Drink.find(params[:id])
  end

  def drink_params
    params.require(:drink).permit(:name, :iced, :price, :ingredients)
  end
end
