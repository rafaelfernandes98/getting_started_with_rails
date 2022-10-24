Rails.application.routes.draw do

  root "articles#index"

  get "/articles", to: "articles#index"

  get "/articles/show/:id", to: "articles#show"

  get "/articles/:id/edit", to: "articles#edit"

  post "/articles/new", to: "articles#new"

  resources :articles do
    resources :comments
  end

end
