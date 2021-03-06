Rails.application.routes.draw do
  root 'welcome#index'

  post 'likes/:post_id/create'=>"likes#create"
  post 'likes/:post_id/destroy'=>"likes#destroy"
  
  post 'logout'=>"users#logout"
  get 'login'=>"users#login_form"
  post 'login'=>"users#login"
  post 'users/:id/update'=>"users#update"
  get 'users/:id/edit'=>"users#edit"
  post 'users/create'=>"users#create"
  get 'signup'=>"users#new"
  get 'users/index'=>"users#index"
  
  get 'users/:id'=>"users#show"
  get 'users/:id/likes' => "users#likes"
  get 'posts/index'=>"posts#index"
  get 'posts/new'=>"posts#new"
  get 'posts/:id'=>"posts#show"
  get 'posts/:id/edit'=>"posts#edit"
  post 'posts/:id/update'=>"posts#update"
  get '/'=>"home#top"
  get 'about'=>"home#about"
  post 'posts/create'=>"posts#create"
  post 'posts/:id/destroy'=>"posts#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
