Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/:category', to: 'tops#index'
  root 'tops#index'
  post 'map', to: 'tops#go_to_list'
end
