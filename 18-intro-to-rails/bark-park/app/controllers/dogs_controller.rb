class DogsController < ApplicationController
  def index
    # render 'some_page'
    @dogs = Dog.all
  end
end