Rails.application.routes.draw do
  
  # root to: "home#index"

  get '/notes', to: 'notes#index'

end
