Rails.application.routes.draw do
  resources :teachers
  devise_for :users
  
  root to: 'teachers#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
