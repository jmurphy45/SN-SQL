Rails.application.routes.draw do
  devise_for :users
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Commontator::Engine => '/commontator'

  root 'user_feed#index'
end
