Rails.application.routes.draw do

  root 'home#index'
  get '/partners/books_read' => 'partners/books_read'
  get '/partners/absences' => 'partners#absences'
  get '/report' => 'partners#report'
  get '/partners/community_leaders' => 'partners#community_leaders'
  get '/partners/parents' => 'partners#parents'
  get '/users/new_parent' => 'users#new_parent'
  get '/users/create_parent' => 'users#create_parent'
  post '/participant_stats' => 'parents#participant_stats'
  post "/partners/articles" => "partners#articles"
  get "/partners/article_form" => "partners#article_form"

  devise_for :users, controllers: { registrations: "registrations" }
  resources :posts
  resources :parents
  resources :participants
  resources :partners
  resources :community_leaders
  resources :profiles
  resources :family_engagements
  resources :attendance_matters
  resources :year_round_readers

  get '/users/select_partner/' => 'users#select_partner'
  post '/users/load_partner/' => 'users#load_partner'
  post '/users/select_partner/load_partner' => 'users#load_partner'


  # post '/users/select_partner/load_partner' => 'users#select_partner#load_partner'

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
