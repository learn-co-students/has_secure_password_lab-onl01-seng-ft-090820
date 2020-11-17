Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/home', to: 'welcome#home'
  get '/signup', to: 'users#new'
  post 'signup', to: 'users#create'

end
