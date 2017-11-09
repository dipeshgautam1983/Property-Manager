Rails.application.routes.draw do




 

  resources :sessions, only: [:new, :create, :destroy]

  
  
  resources :tenants
  resources :agents
  resources :property_managers
  resources :system_users
  resources :deposits
  resources :apartments
  resources :properties
  resources :tickets
  resources :application_fees
  resources :rents
  resources :payments
  resources :appointments
  
  # get 'sessions/new'

  # get 'sessions/create'

  # get 'sessions/destroy'
  

  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'



  
  get 'static_pages', to: 'static_pages#home'
  get 'property_managers_home', to: 'static_pages#property_managers_home', as: 'property_managers_home'
  get 'properties_home', to: 'staticpages#properties_home', as: 'properties_home'
  get 'tenants_home', to: 'static_pages#tenants_home', as: 'tenants_home'
  get 'agents_home', to: 'static_pages#agents_home', as: 'agents_home'
  get 'contact', to: 'static_pages#contact', as: 'contact'
  get 'about', to: 'static_pages#about', as: 'about'

  root to: 'static_pages#home'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
