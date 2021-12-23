Rails.application.routes.draw do
  root 'posts#index'

  resources :posts, only: %i(new index create show destroy)
end
