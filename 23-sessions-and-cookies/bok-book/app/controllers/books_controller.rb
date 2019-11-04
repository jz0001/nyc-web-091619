class BooksController < ApplicationController
  def index
    session[:cart] ||= []

    @cart_books = session[:cart].map do |id|
      Book.find(id)
    end


    @books = Book.all
  end

  def show
    session[:views] ||= 0
    session[:views] += 1

    @book = Book.find(params[:id])
  end
end
