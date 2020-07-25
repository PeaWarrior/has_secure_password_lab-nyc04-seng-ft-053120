Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'login', to: 'sessions#new'
  post 'create', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  root 'welcome#home'
end
