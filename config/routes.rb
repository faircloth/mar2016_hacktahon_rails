Rails.application.routes.draw do
  
  # root to: "home#index"

  get '/notes',   to: 'notes#index'
  post '/notes',  to: 'notes#create'

end
