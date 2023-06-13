Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get "about", to: "pages#about"
  get "contact", to: "pages#contact"
  get "my_checkouts", to: "pages#my_checkouts"
  get "my_notifications", to: "pages#my_notifications"
  get "my_bands", to: "bands#my_bands"
  resources :bands do
    resources :checkouts, only: %i[new create]
  end
  resources :checkouts, only: :destroy
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
