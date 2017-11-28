Rails.application.routes.draw do
  root 'customers#create'
  post '/', to: 'customers#', as: ''
  
  get 'orders/list_undelivered_orders'

  get 'orders/add'

  get 'orders/list_my_orders'

  get 'orders/mark_as_delivered'

  get 'customers/list'

  get 'customers/order'

  get 'employees/assign_customer'

  get 'meals/list'

  get 'meals/add'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
