Rails.application.routes.draw do

  resources :students, only: [:index, :show, :new, :create, :edit, :update, :patch]

  resources :school_classes, only: [:index, :show, :new, :create, :edit, :update, :patch] 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
