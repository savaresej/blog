Rails.application.routes.draw do
  
  get 'memorygame/index'

root 'welcome#index'

  get 'aboutme' => 'aboutme#index'
  get 'sitemap' => 'sitemap#index'
  get 'welcome' => 'welcome#index'
  get 'aboutme/pics' => 'aboutme#pics'
  get 'memorygame' => 'memorygame#index'
  get 'memorygame/test' => 'memorygame#test'
  get 'portfolio' => 'aboutme#portfolio'

  post 'set_name' => 'welcome#set_name'
  post 'set_background_color' => 'welcome#set_background_color'
  post 'memory_game_1' => 'memorygame#memory_game_1'
  post 'memory_game_2' => 'memorygame#memory_game_2'
  post 'memory_game_3' => 'memorygame#memory_game_3'
  post 'memory_game_4' => 'memorygame#memory_game_4'
  post 'memory_game_5' => 'memorygame#memory_game_5'

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
