Rails.application.routes.draw do

  get 'coming_soon/putting_book'
  get 'coming_soon/short_book'

  get 'about/benefits'
  get 'about/principles'
  get 'about/staff'

  get 'resources/aids'
  get 'resources/fitness'

  get 'fitting/full'
  get 'fitting/wedge'
  get 'fitting/putter'

  get 'game/instruction'
  get 'game/programs'

  get 'welcome/index'
  get 'welcome/personality'
  get 'welcome/newsletter'
  get 'welcome/game'
  get 'welcome/body'
  get 'welcome/resources'
  get 'welcome/about'
  get 'welcome/contact'

  root 'welcome#index'

resources :users
resources :sessions, only: [:new, :create, :destroy]
resources :bal_quizzes
resources :flex_quizzes
resources :bod_quizzes
resources :per_quizzes
resources :swing_books


match '/send_mail', to: 'contact#send_mail', via: 'post'


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
