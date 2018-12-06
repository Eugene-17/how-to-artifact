Rails.application.routes.draw do
  resources :posts
  devise_for :users, controllers: { sessions: 'users/sessions' }
  resources :categories

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'about', to: 'about#about'
  root to: 'home#index'
end
