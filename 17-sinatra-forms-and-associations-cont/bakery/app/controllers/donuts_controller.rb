class DonutsController < ApplicationController

  #Index
  get "/donuts" do 
    @donuts = Donut.all
    erb :"donuts/index"
  end

  #New
  get'/donuts/new' do
    @designers = Designer.all
    
    erb :"donuts/new"
  end

  #Create
  post '/donuts' do
    # Donut.create(flavor: params["flavor"], price: params["price"])
    donut = Donut.new(params)
    
    if donut.save
      redirect "/donuts/#{donut.id}" #redirect to SHOW page
    else
      @error_messages = donut.errors.full_messages
      erb :"donuts/new"
    end
  end

  #Show
  get '/donuts/:id' do 
    @donut = Donut.find(params[:id])
    @designer = @donut.designer 
    
    erb :"donuts/show"
  end

  #Edit
  get '/donuts/:id/edit' do 
    @donut = Donut.find(params[:id])

    erb :"donuts/edit"
  end

  #Update
  patch '/donuts/:id' do 
    @donut = Donut.find(params[:id])

    if @donut.update(params.except(:_method))
      redirect "/donuts/#{@donut.id}" #redirect to SHOW page
    else
      # donut flavor is empty string - how can we fix this?
      @error_messages = @donut.errors.full_messages
      erb :'donuts/edit' # we should probably redirect here to be restful
    end
    
  
  end


  #Delete
  delete '/donuts/:id' do 

    #your code here

  end
end

# http://www.restular.com/