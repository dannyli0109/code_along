Rails.application.routes.draw do
  get '/about', to: 'pages#about'
  # get '/contact-us', to: 'reviews#new'
  # post '/contact-us', to: 'reviews#create'
  resources :reviews, only:[:new, :create]
  resources :dishes







  # get '/dishes', 'dishes#index' # whats generated behind the scenes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
