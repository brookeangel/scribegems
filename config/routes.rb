Rails.application.routes.draw do
  root 'notes#index'
  resources :notes, only: [:index, :create, :destroy]
end
