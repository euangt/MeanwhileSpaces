Rails.application.routes.draw do
  get 'bookings/show'
  get 'bookings/create'
  get 'bookings/destroy'
  get 'users/edit'
  get 'users/update'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :spaces, only: [:index, :show, :new, :create]
end
