Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'numbers/show/:id', to: 'numbers#show'
  post 'numbers/create', to: 'numbers#create'
  put 'numbers/update/:id', to: 'numbers#update'
  get 'numbers/get/:id/:code', to: 'numbers#getsamecode'

  post 'results/create', to: 'results#create'
  get 'results/show/:id', to: 'results#show'
  resources :numbers
end
