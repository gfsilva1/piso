Rails.application.routes.draw do
  get 'home', to: 'pisos#home'
  get 'pisos', to: 'pisos#index'
  get 'pisos/new', to: 'pisos#new'
  post 'pisos/', to: 'pisos#create'

  get 'pisos/:id' , to: 'pisos#show', as: :piso
  get "pisos/:id/edit", to: 'pisos#edit', as: :edit_piso
  patch "pisos/:id", to: "pisos#update"
  delete "pisos/:id", to: "pisos#destroy"


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
