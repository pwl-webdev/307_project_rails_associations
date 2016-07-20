Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#new'
  get 'log_out', to: :log_out, controller: 'application'
  resources :users, only: [:new, :create, :show]
  resources :events, only: [:create, :show, :index]
end
