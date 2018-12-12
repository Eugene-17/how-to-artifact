Rails.application.routes.draw do
  get 'posts/news_index'
  resources :post_images
  resources :posts
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :users, :only => [:show]
  resources :categories

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'about', to: 'about#about'
  root to: 'home#index'
  get 'news', to: 'news#index', as: :news_index
  get 'guides', to: 'guides#index', as: :guides_index
  get "*path" => redirect("/")
end
