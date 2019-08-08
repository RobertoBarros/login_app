Rails.application.routes.draw do
  devise_for :users

  resources :profiles, only: %i[new create]
  resources :dashboards, only: %i[index]

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
