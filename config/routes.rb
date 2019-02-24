Rails.application.routes.draw do
  root :to => 'homes#top'
  get 'posts/new'
  get '/top' => 'homes#top'
  get '/new' => 'posts#new'

  get '/posts' => 'posts#index'
  post '/posts' => 'posts#create'

  get '/posts/:id/edit' => 'posts#edit', as: 'edit_post'

  get '/posts/:id' => 'posts#show', as: 'post'
  patch '/posts/:id' => 'posts#update', as: 'update_post'
  delete '/posts/:id' => 'posts#destroy', as: 'destroy_post'
end
