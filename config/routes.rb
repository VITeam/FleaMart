Rails.application.routes.draw do
  resources :listing_attachments
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get 'messages/new'
  get 'messages/create'
  get 'conversations/index'
  get 'conversations/get_mailbox'

  resources :orders
  devise_for :users
  
  resources :listings do 
    resources :orders, only: [:new, :create]
  end
  
  resources :conversations, only: [:index, :show, :destroy] do
    member do
      post :reply
      post :restore
      post :mark_as_read
    end
    collection do
      delete :empty_trash
    end
  end
  
  #default_url_options :host => "localhost"

  resources :messages, only: [:new, :create]

  get 'pages/about'
  get 'pages/contact'
  get 'seller' => "listings#seller"
  get 'sales' => "orders#sales"
  get 'purchases' => "orders#purchases"

  root 'listings#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
