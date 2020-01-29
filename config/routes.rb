Rails.application.routes.draw do
  resources :posts do
    member do
      post :like
      post :unlike
    end
  end

  root 'posts#index'

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
