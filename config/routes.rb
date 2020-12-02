Rails.application.routes.draw do
  get 'login', to: 'sessions#new'

  post 'sessions/create'

  resources :users
end
