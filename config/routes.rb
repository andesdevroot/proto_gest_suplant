Rails.application.routes.draw do
  resources :socios

root to: redirect('/socios')
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
