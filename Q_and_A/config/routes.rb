Rails.application.routes.draw do
  get 'answers/edit'
  resources :questions do
    resources :answers
  end

  root 'questions#index'
end
