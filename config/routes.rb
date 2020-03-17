Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "projects#index"
  
  resources :projects, except: [:create, :new, :edit, :update, :destroy]
  resources :tasks, except: [:index, :show, :new, :edit, :update, :destroy]
end
