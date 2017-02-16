Rails.application.routes.draw do

  get 'user/new'
  get 'user/create'

  get 'signup', to: 'users#new'

  get 'pages/home'
  root 'pages#home'

  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
