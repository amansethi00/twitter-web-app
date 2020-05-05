Rails.application.routes.draw do
  get 'users/index'=>"users#index"
  get 'users/:id'=>"users#show"
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
