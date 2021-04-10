Rails.application.routes.draw do
  mount RailsAdmin::Engine => "/admin", as: "rails_admin"

  resources :categories, param: :slug do
    resources :articles, param: :slug
  end
  resources :sessions do
    resources :questions
  end
  root "categories#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
