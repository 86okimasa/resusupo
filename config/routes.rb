Rails.application.routes.draw do
  root to: "home#index"

  devise_for :admins, controllers: {
    sessions:      'admins/sessions',
    passwords:     'admins/passwords',
    registrations: 'admins/registrations'
  }
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'
  }
  
  resources :users, only: [:show]

  resources :informations, only: [:index, :new, :create, :show] do
    resources :comments, only: [:create]
    resources :follows, only: [:create, :destroy]
    resources :dishes, only: [:index, :new, :create]
    resources :appeals, only: [:index, :new, :create]
    collection do
      get 'search'
    end
  end
end
