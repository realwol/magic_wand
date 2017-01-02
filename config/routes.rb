Rails.application.routes.draw do
  post 'users/thumb_up'
  post 'users/cancel_thumb_up'

  get 'article/index'

  devise_for :users
  resources :articles

  root 'articles#index'
end
