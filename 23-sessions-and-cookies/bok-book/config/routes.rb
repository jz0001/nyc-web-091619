Rails.application.routes.draw do
  resources :books, only: [:show, :index]

  post "/cart", to: "cart#add_to_cart"
  delete "/clear_cart", to: "cart#clear_cart"
  delete "/cart", to: "cart#remove_from_cart"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
