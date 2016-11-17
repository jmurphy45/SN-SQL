Rails.application.routes.draw do
  devise_for :users
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  mount Commontator::Engine => '/commontator'


  post :follows, to: "follows#create", as: :follow
  post :follows, to: "follows#destroy", as: :unfollow

  get '/follow', to: 'follows#index', as: 'follow_index'
  get '/', to: 'user_feed#index', as: 'home_index'
  root 'user_feed#index'
end
