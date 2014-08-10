SampleApp::Application.routes.draw do

  resources :posts

  root  'static_pages#home'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  match '/instagram', to: "home#index", via: 'get'
  match '/results', to: "home#instagram_results", via: 'post'
  match '/posts', to: "posts#new", via: 'get'
  

end
