Rails.application.routes.draw do
  resources :school_classes, only: [:index, :new, :edit, :create, :update, :show]
  resources :students, only: [:index, :new, :edit, :create, :update, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
