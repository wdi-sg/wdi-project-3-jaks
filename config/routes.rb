Rails.application.routes.draw do


  root 'supplier#index'

  resources:supplier

  resources:orders



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
