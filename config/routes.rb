Rails.application.routes.draw do
  resources :user_types
  resources :user_data
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
