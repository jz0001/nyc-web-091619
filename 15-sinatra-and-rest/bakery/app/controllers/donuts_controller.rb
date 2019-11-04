class DonutsController < ApplicationController

  get "/donuts" do #Index
    @donuts = Donut.all
    erb :"donuts/index"
  end

  get'/donuts/new' do #New
    erb :"donuts/new"
  end

  post '/donuts' do #Create
    Donut.create(flavor: params["flavor"], price: params["price"])
    redirect "/donuts"
  end

  get '/donuts/:id' do #Show

    #your code here
  
  end

  get '/donuts/:id/edit' do #Edit

    #your code here
  
  end

  patch '/donuts/:id' do #Update

    #your code here
  
  end


  delete '/donuts/:id' do #Delete

    #your code here

  end
end

# http://www.restular.com/