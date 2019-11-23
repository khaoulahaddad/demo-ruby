Rails.application.routes.draw do
  get 'livres/liste'
  post 'pages/connect'
  get 'pages/deconnect'
  get 'pages/home'
  post 'livres/reserver'
  post 'livres/retour'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
