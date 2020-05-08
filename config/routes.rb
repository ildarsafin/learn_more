Rails.application.routes.draw do

  devise_for :users
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :topics do
    resources :concepts

    post :subscribe
  end

  resources :concepts, only: [] do
    post :learn
  end

  resources :embeds

  root to: 'topics#index'

end
