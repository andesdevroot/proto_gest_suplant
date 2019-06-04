Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :compromisos
  resources :asistencia
  resources :lists
  resources :recepcions
  resources :consulta
  devise_for :users
  resources :socios

root to: redirect('/socios')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
