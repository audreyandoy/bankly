Rails.application.routes.draw do

  # resources :line_items

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'

  get 'items' => 'line_items#new', as: :line_items
  post 'items' => 'line_items#create'

  put 'items/:id' => 'line_items#update'
  # get '/line_items/:id(.:format)' => 'line_items#show', as: :items_show

  get '/items/show' => 'line_items#show', as: :line_items_show
  get '/line_items/:id/edit(.:format)' => 'line_items#edit', as: :line_items_edit
  delete '/line_items/:id(.:format)' => 'line_items#destroy', as: :line_items_delete

  get 'category/:category_name' => 'line_items#category', as: :category


  get 'users' => 'users#new'
  post 'users' => 'users#create'

  get 'profile' => "users#show", as: :users_show

  get 'dashboard' => "dashboard#index"

  root 'main#index'



# line_items_path GET /line_items(.:format) line_items#index
# POST  /line_items(.:format) line_items#create
# new_line_item_path  GET /line_items/new(.:format) line_items#new
# edit_line_item_path GET /line_items/:id/edit(.:format)  line_items#edit
# line_item_path  GET /line_items/:id(.:format) line_items#show
# PATCH /line_items/:id(.:format) line_items#update
# PUT /line_items/:id(.:format) line_items#update
# DELETE  /line_items/:id(.:format) line_items#destroy
# login_path  GET /login(.:format)  sessions#new
# POST  /login(.:format)  sessions#create
# logout_path GET /logout(.:format) sessions#destroy
# DELETE  /line_items/:id(.:format) line_items#destroy
# users_path  GET /users(.:format)  users#new
# POST  /users(.:format)  users#create
# users_show_path GET /profile(.:format)  users#show
# dashboard_path  GET /dashboard(.:format)  dashboard#index
# root_path GET / main#index

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
