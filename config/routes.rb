Rails.application.routes.draw do
  devise_for :users
  # before

get 'items/index'
# after
root 'items#index'

resources :items, only: [:index, :show, :new, :create, :destroy]
resources :users, only: :show do
  member do
    get 'log_out'
  end
end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :transacts
resources :addresses
resources :cards
end
