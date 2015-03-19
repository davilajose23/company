Rails.application.routes.draw do
  root 'projects#index'

  resources :projects

  # %w(projects).each do |plural_name|
  #   singular_name = plural_name.singularize
  #
  #   match "#{plural_name}/:id", to: "#{plural_name}#show", via: :get, as: singular_name 
  #   match "#{plural_name}", to: "#{plural_name}#index", via: :get, as: plural_name
  #   match "#{plural_name}", to: "#{plural_name}#create", via: :post
  #   match "#{plural_name}/:id/edit", :to => "#{plural_name}#edit", via: :get, as: "edit_#{singular_name}"
  #   match "#{plural_name}/:id", to: "#{plural_name}#update", via: :put
  #   match "#{plural_name}/new", to: "#{plural_name}#new", via: :get, as: "new_#{singular_name}"
  #   match "#{plural_name}/:id", to: "#{plural_name}#destroy", via: :delete
  # end

  resources :departments
  resources :dependents
  resources :employees
  resources :locations
  resources :assignations
  
  get '/reports/example', to: 'reports#example', as: :example
  get '/reports/reporte_ventas', to: 'reports#sales_report', as: :sales_report
  
end
