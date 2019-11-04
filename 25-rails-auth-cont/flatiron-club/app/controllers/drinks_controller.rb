class DrinksController < ApplicationController
  def index
    if logged_in?
      @user = current_user
      @drinks = @user.drinks
    else
      @drinks = Drink.all
    end
  end
end
