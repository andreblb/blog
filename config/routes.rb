Rails.application.routes.draw do
  get 'welcome/index'
  post '/articles/new'
  get "/articles/id:/create", to: "articles#create"
  get "/articles/:id/show", to: "articles#show"
  get "/articles/:id/index", to: "articles#index"
  get "/articles/:id/edit", to: "articles#edit"
  resources :articles

  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
