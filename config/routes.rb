Rails.application.routes.draw do
  devise_for :users
  root to: "fusees#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :fusees do
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
