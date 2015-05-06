Rails.application.routes.draw do
  resources :clientes

  get 'static_pages/home'

  get 'static_pages/help'

  get 'static_pages/contact'

  get 'static_pages/about'

  resources :productos do
    collection { post :search, to: 'productos#index' }
  end

  
  match '/home', to: 'static_pages#home',  via: 'get'
  match '/help',	to: 'static_pages#help',  via: 'get'
  match '/about',   to: 'static_pages#about',  via: 'get'
  match '/contact', to: 'static_pages#contact',  via: 'get'

  root :to => 'static_pages#home'
end
