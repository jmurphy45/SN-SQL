Rails.application.routes.draw do

  devise_for :users
  get '/likes/:id', to: 'users#show', as: 'show_user'
  resources :likes
  #delete 'follows/:id' => 'follows#destroy'
  delete 'follows/:id' => 'follows#destroy'
  resources :posts
  resources :follows
  mount Commontator::Engine => '/commontator'
  root 'news_feed#index'
end
