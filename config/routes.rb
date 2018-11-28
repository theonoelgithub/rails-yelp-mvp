Rails.application.routes.draw do
  resources :restaurants, except: [:update, :edit, :destroy] do
    resources :reviews, only: [:create]
  end
  root 'restaurants#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
