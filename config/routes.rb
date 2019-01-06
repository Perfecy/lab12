Rails.application.routes.draw do
  get 'session/login'

  post 'session/create'

  get 'session/logout'

  resources :users
  root to: 'logic#input'

  get 'logic/input'

  get 'logic/output'
  #kekpek
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
