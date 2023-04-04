Rails.application.routes.draw do

  root to: "homes#top"
  devise_for :users

  get 'about' =>'homes#about', as: 'about'

  resources :post_images, only: [:new, :index, :show, :create, :destroy] do
    resources :post_comments, only: [:create, :destroy]
    # resouceを単数形にすると、/:idがURLに含まれなくなります。
    resource :favorites, only: [:create, :destroy]
  end

  resources :users, only: [:show, :edit, :update]


end