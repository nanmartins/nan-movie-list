Rails.application.routes.draw do
  root to: 'lists#index'
  get "bookmarks/id", to: "bookmarks#destroy"
  resources :lists, only: [:index, :show, :new, :create, :destroy] do
    resources :bookmarks, only: [:new, :create, :destroy]
    resources :reviews, only: :create
  end

  resources :bookmarks, only: :destroy
  resources :reviews, only: :destroy
end
