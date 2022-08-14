Rails.application.routes.draw do
  root to: "pages#home"

  resources :lists, only: [ :index, :show, :new, :create, :destroy ] do
    resources :bookmarks, only: [:new, :create, :destroy]
    resources :reviews, only: :create
  end

  resources :bookmarks, only: :destroy
  resources :reviews, only: :destroy
end
