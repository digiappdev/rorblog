Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  namespace :admin do 
    resources :categories
    devise_for :users
    resources :articles   
    get '/', to: 'dashboard#index'
  end
  # Defines the root path route ("/")
  root "pages#index"
end
