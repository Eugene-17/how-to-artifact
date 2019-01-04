Rails.application.routes.draw do
  resources :banners
  resources :post_images
  resources :posts
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :users, :only => [:show]
  resources :categories
  resources :banners

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'about', to: 'about#about'
  get 'admin', to: 'admin#index' , :as => :admin
  root to: 'home#index'
  get "*path" => redirect("/")
  post '/tinymce_assets' => 'tinymce_assets#create'
end
