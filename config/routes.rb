Rails.application.routes.draw do
  root "homes#index"
  devise_for :users
  resources :posts
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end 
end
