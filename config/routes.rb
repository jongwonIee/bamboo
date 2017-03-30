Rails.application.routes.draw do

  get 'main' => 'posts#index'

  post 'posts' => 'posts#create'
  get 'posts/new' => 'posts#new', as: 'new_post'

  root 'posts#index'

end
