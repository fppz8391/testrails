Rails.application.routes.draw do
  resources :items
  get   '/all', to: 'all#index'
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
