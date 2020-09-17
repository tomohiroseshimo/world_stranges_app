Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  root 'posts#index'
  get 'posts/witness' => 'posts#witness'
  resources :posts
  # get "posts/show" => "posts#show"
end
