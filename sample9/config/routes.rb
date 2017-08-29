Rails.application.routes.draw do
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
  #get '/nikkyuusan/', to: 'sample#sayhelloToNyukkyusan'

  root 'init#index'
  post '/showprograming/', to: 'init#showprograming'
  
  get  '/diarydetails/show/',  to: 'diarydetails#show'
  post  '/diarydetails/showpartical/',  to: 'diarydetails#showlist'
  post  '/diarydetails/show/details/',  to: 'diarydetails#showdetails'
  
  get  '/diarymodify/show/',  to: 'diarymodify#show'
  post '/diarymodify/comfirm/',  to: 'diarymodify#comfirm'
  post '/diarymodify/update/',  to: 'diarymodify#update'
  
  get  '/diaryregister/show/',  to: 'registerdiary#show'
  post '/diaryregister/comfirm/',  to: 'registerdiary#comfirm'
  post '/diaryregister/register/',  to: 'registerdiary#register'

  get  '/reactsample/show/',           to: 'react_sample#show'
  get '/reactsample/show/tabearukis',  to: 'react_sample#tabearukis'
   
end
