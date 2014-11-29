Rails.application.routes.draw do
  root 'main#home'

  resources :artists
  resources :albums
end
