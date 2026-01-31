Rails.application.routes.draw do
  devise_for :users

  get 'dashboard', to: 'users#dashboard', as: :dashboard
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resource :dashboard, only: [:show]

  resources :tests, except: [:edit, :update, :destroy] do
    resources :questions, only: [:edit, :update]
  end
end
