Rails.application.routes.draw do
root 'units#index'


  # Routes for the Unit resource:
  # CREATE
  get "/units/new", :controller => "units", :action => "new"
  post "/create_unit", :controller => "units", :action => "create"

  # READ
  get "/units", :controller => "units", :action => "index"
  get "/units/:id", :controller => "units", :action => "show"

  # UPDATE
  get "/units/:id/edit", :controller => "units", :action => "edit"
  post "/update_unit/:id", :controller => "units", :action => "update"

  # DELETE
  get "/delete_unit/:id", :controller => "units", :action => "destroy"
  #------------------------------

  # Routes for the Application resource:
  # CREATE
  get "/applications/new", :controller => "applications", :action => "new"
  post "/create_application", :controller => "applications", :action => "create"

  # READ
  get "/applications", :controller => "applications", :action => "index"
  get "/applications/:id", :controller => "applications", :action => "show"

  # UPDATE
  get "/applications/:id/edit", :controller => "applications", :action => "edit"
  post "/update_application/:id", :controller => "applications", :action => "update"

  # DELETE
  get "/delete_application/:id", :controller => "applications", :action => "destroy"
  #------------------------------

  devise_for :tenants
  devise_for :landlords

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
