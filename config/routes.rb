Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # scope :v1 do
  #   devise_for :users, controllers: {sessions: 'v1/api/sessions', registrations: 'v1/api/registrations'}
  # end
  namespace :v1 do
    namespace :api do
      resources :products
    end
  end
end
