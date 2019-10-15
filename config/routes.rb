Rails.application.routes.draw do
  resources :poems
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

end
