Rails.application.routes.draw do
  resources :school_classes, only: [:show, :new, :edit, :create, :update] 
  resources :students, only: [:show, :new, :edit, :create, :update] 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
