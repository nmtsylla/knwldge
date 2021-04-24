Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: "users/sessions", registrations: "users/registrations" }
  mount RailsAdmin::Engine => "/admin", as: "rails_admin"

  resources :categories, param: :slug do
    resources :articles, param: :slug
  end
  resources :sessions do
    resources :questions
    get "resume", on: :member
  end
  root "categories#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
