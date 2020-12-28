Rails.application.routes.draw do
  root to: "static_pages#home"
  get "/help", to: "static_pages#help"
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
