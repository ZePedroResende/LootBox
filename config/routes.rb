Rails.application.routes.draw do
  devise_for :merchants, path:'merchants', controllers: {sessions: "merchants/sessions"}
  devise_for :users, path:'users', controllers: {sessions: "users/sessions"}


  devise_scope :user do
    authenticated :user do
      root 'home#index', as: :authenticated_user_root
      resources :users do
        resources :buys
      end
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_user_root
    end
  end

  devise_scope :merchant do
    authenticated :merchant do
      root 'home#index', as: :authenticated_merchant_root
      resources :merchants do
        resources :buys
        resources :boxes
      end
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_merchant_root
    end
  end

  resources :merchants , only: [:index, :show] do
    resources :boxes
  end
end
