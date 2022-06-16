Rails.application.routes.draw do
  root "homes#index"
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end 
  resources :users
  resources :posts
  get 'search' => 'posts#search'
end
