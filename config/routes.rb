Rails.application.routes.draw do
  root to: "homes#top"
  devise_for :users

  get 'about' =>'homes#about'

  resources :post_images, only: [:new, :index, :show, :create]

end