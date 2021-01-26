Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :trips do
    resources :notes, only:[:new, :create]
    resources :goals, only:[:new, :create]
  end

  resources :notes, only: [:destroy, :update, :edit]
  resources :goals, only: [:destroy, :update, :edit]
end
