class CartController < ApplicationController
  def add_to_cart
    session[:cart] ||= []
    session[:cart] << params[:id]

    redirect_to books_path

    # render :'books/index'
  end

  def clear_cart
    session[:cart] = []

    redirect_to books_path
  end

  def remove_from_cart
    session[:cart] = session[:cart].select{|id| id != params[:id]}

    redirect_to books_path
  end
end
