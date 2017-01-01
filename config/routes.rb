Rails.application.routes.draw do
  get 'article/index'

  devise_for :users
  resources :article

  root 'article#index'
end
