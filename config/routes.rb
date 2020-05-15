Rails.application.routes.draw do

  devise_for :users

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
