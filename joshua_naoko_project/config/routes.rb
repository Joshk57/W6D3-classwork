Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # resources :users

  # get 'users', to: 'users#index', as: 'users'
  # post 'users', to: 'users#create'
  # get 'users/:id', to: 'users#show'
  # get 'users/new', to: 'users#new', as: 'new_user'
  # get 'users/:id', to: 'users#edit', as: 'edit_user'
  # patch 'users/:id', to: 'users#update', as: 'user'
  # put 'users/:id', to: 'users#update'
  # delete 'users/:id', to: 'users#destroy'

  resources :users, only: [:index, :show, :create, :update, :destroy]

  resources :users do
    resources :artworks, only: [:index]
  end

  resources :artworks, only: [:show, :create, :update, :destroy]

  resources :artwork_shares, only: [:create, :destroy]
end
