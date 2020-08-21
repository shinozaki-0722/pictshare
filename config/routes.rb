Rails.application.routes.draw do
  root "posts#index"
  get "posts/situation"
  resources :posts
end
