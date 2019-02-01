Rails.application.routes.draw do
  resources :playlists
  resources :users

  root 'playlists#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
