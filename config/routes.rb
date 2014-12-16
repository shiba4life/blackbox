Rails.application.routes.draw do
  resources :items

  resources :batches do
  	resources :items
  end

  devise_for :users
  root to: 'visitors#index'

  get 'preview_images', to: 'items#preview_images'

end
