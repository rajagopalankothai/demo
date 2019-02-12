Rails.application.routes.draw do
 
  
 
  resources :reviews
  resources :line_items
  resources :carts
  resources :searches
  resources :charges
  resources :checkout, only:[:index]
  resources :subscriptions
  resources :products do
  resources :reviews, except: [:show, :index] 
  
  end
   resources :invoices, only: [:index, :show] do
    resource :download, only: [:show]
  end
   
  resources :orders
  devise_for :users,controllers: { registrations: 'registrations'}
  root 'products#index'
  get '/search' => 'products#search', :as => 'search_page'
  get '/approve' => 'products#approve', :as => 'approve_page'
  post '/products/await', to: 'products#await'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
  

  