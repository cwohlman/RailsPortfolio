Portfolio::Application.routes.draw do
  resources :recipes

  get "static_pages/home"
  get "static_pages/help"
  resources :microposts
  resources :ingredients
  resources :recipe_steps

  root "pages#home"    
  get "home", to: "pages#home", as: "home"
  get "inside", to: "pages#inside", as: "inside"
  
    
  devise_for :users
  
  namespace :admin do
    root "base#index"
    resources :users
  end
  
end
