Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  get "posts/situation"
  resources :posts, only: [:create]
end