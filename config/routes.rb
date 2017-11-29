Rails.application.routes.draw do
  devise_for :employees
  get '/', to: "orders#new", as: 'orders'
  post '/', to: "orders#create", as: 'create'
  resources :order
  resources :meal
  resources :employee
  get 'meals/all', to: 'meals#list', as: 'meal_list'
  get 'meals/new', to: "meals#new", as: 'meals'
  post 'meals/new', to: "meals#create", as: 'create_meals'
  get 'order/all', to: 'orders#list_orders', as: 'order_list'
  get 'thanks', to: 'orders#thanks', as: 'thanks'
  get '/manager/dashboard', to: 'employees#manager_dashboard', as: 'manager'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
