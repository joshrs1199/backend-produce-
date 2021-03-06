Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/signup', to: 'users#create'
  post '/login', to: 'auth#login'
  get '/auto_login', to: 'auth#auto_login'
  get '/songs', to: 'items#index'
  post '/shoppingcart', to: 'carts#create'
  delete '/shoppingcart', to: 'carts#destroy'
  post '/contactform', to: 'contacts#create'
end
