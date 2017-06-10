Rails.application.routes.draw do
  get 'portfolios/index'

  get 'portfolios/show'

  get 'portfolios/exit'

  get 'artists/index'

  get 'artists/show'

  get 'artists/exit'

  get 'home/index'

  devise_for :users, :controllers => {:omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :artists
  resources :portfolios

root 'home#index'
end
