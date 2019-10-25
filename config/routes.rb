Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "cocktails#index" # so when you type localhost:3000/ directs you to localhost:3000/cocktails without typing cocktails
  resources :cocktails, only: [:show, :index, :create, :new] do
   resources :doses, only: [:new, :create]
   resources :reviews, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
end
