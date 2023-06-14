Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'lists/index'
  get 'lists/new'
  get 'lists/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, only: [:create, :index, :show, :new] do
    resources :bookmarks, only: [:new, :create, :index]
  end
end
