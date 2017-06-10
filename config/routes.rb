Rails.application.routes.draw do


  devise_for :users, :controllers => {:omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :artists do
  resources :portfolios

 #get 'portfolios', to: 'portfolios#something_else', as: 'portfolios'
  end

root 'home#index'
end
