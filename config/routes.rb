Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/static_pages', to: 'static_pages#index'

  # Defines the root path route ("/")
  root "static_pages#index"
end
