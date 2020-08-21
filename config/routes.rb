Rails.application.routes.draw do
  root to: "posts#index"
  get "posts/situation"
  resources :posts, only: [:create]
end