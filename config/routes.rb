Rails.application.routes.draw do
  get '/', to: "orders#new", as: 'orders'
  post '/', to: "orders#create", as: 'create'
  resources :order
  resources :meal
  resources :employee
  get 'meal/all', to: 'meal#list', as: 'meal_list'
  get 'order/all', to: 'order#list', as: 'order_list'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
