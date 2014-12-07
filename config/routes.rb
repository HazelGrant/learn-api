Rails.application.routes.draw do
  root 'main#home'

  resources :artists
  resources :albums

  namespace :api do
    resources :albums, :artists
  end
end
